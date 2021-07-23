class ApplicationController < ActionController::API
  before_action :set_current_ip
  before_action :set_current_story if Story.find(params[:story_id]).exists?

  def set_current_story
    @current_story = Story.find(params[:story_id])
    Story.current = @current_story
  end

  def set_current_ip
    Dislike.current_ip = request.remote_ip
    Like.current_ip = request.remote_ip
  end
end
