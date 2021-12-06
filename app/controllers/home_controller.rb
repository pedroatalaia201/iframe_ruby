class HomeController < ApplicationController
  def index
    @video = Video.all()
  end
end
