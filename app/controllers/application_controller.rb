class ApplicationController < ActionController::API
  before_action :set_current_ip, :set_current_story

  def set_current_story
    if params.keys.include?('story_id')
      @current_story = Story.find(params[:story_id])
      Story.current = @current_story
    end
  end

  def set_current_ip
    Dislike.current_ip = request.remote_ip
    Like.current_ip = request.remote_ip
  end
end
