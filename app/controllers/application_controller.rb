class ApplicationController < ActionController::API
  before_action :set_current_ip, :cors_preflight_check
  before_action :set_current_story if Story.find(params[:story_id]).exists?

  def set_current_story
    @current_story = Story.find(params[:story_id])
    Story.current = @current_story
  end

  def set_current_ip
    Dislike.current_ip = request.remote_ip
    Like.current_ip = request.remote_ip
  end

  def cors_preflight_check
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Allow-Methods'] = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method'] = '*'
    headers['Access-Control-Allow-Headers'] = 'Origin, X-Requested-With, Content-Type, Accept, Authorization'
  end
end
