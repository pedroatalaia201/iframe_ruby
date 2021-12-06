class VideoController < ApplicationController
  def index
    @video = Video.all 
    @video = Video.new   
  end

  def edit 
  end

  def create
    @video = Video.new(video_params) 
    @video.save

    if @video.save
      p "video saved"
      redirect_to root_path()
    end

  end
  
  private
  def video_params
    params.require(:video).permit(:title, :link)
  end
end
