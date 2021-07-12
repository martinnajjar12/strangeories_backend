class ApplicationController < ActionController::API
  before_action :set_current_story, :set_current_ip

  def set_current_story
    @current_story = Story.find(params[:story_id])
    Story.current = @current_story
  end

  def set_current_ip
    Dislike.current_ip = request.remote_ip
  end
end
