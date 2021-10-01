class PlaysController < ApplicationController
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
    if @play.save
      redirect_to plays_path
    else
      render :new
    end
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

  private

  def play_params
    params.require(:play).permit(:game, :category, :video, :title, :player_id)
  end
end
