class ApplicationController < ActionController::API
  before_action :set_current_ip, :set_current_story

  def set_current_story
    Story.current = Story.find(params[:story_id]) if params.keys.include?('story_id')
  end

  def set_current_ip
    Dislike.current_ip = request.remote_ip
    Like.current_ip = request.remote_ip
  end
end
