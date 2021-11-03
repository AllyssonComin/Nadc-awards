class PlaysController < ApplicationController
  respond_to :js, :jason, :html

  def index
    @plays = Play.all
  end

  def show
    @play = Play.find(params[:id])
  end

  def new
    @play = Play.new
    @users = User.pluck(:email)
  end

  def create
    @play = Play.new(play_params)
    @play.uploader = current_user.first_name
    @play.save
    # PLAY.UPLOADER NOT WORKING
    if @play.save
      redirect_to plays_path
    else
      render :new
    end
  end

  def destroy
    @play = Play.find(params[:id])
    @play.destroy
    redirect_to plays_path
  end

  def edit
    @play = Play.find(params[:id])
  end

  def update
    @play = Play.find(params[:id])
    if @play.update(play_params)
      redirect_to @play
    else
      render :edit
    end
  end

  def vote
    @play = Play.find(params[:id])
    if !current_user.liked? @play
      @play.liked_by current_user
    elsif current_user.liked? @play
      @play.unliked_by current_user
    end
  end

  private

  def play_params
    params.require(:play).permit(:game, :category, :video, :title, :player_id)
  end
end
