class HomeController < ApplicationController
  def index
    @users = User.all
  end

  def qr
  end
end
