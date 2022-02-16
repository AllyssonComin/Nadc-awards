class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  # def countdown
  #   start_date = Date.now
  #   end_date = Date.parse "2021-04-02 14:46:21 +0200"

  # end
end
