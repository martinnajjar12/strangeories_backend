class Api::V1::LikesController < ApplicationController
  def create
    if author_signed_in?
      like = current_author.likes.new(story_id: params[:story_id])
      story = Story.find(params[:story_id])

      if like.save
        render json: story, status: 201
      else
        render json: like.errors, status: 422
      end
    else
      render json: { error: 'You have to sign in before liking a story' }, status: 401
    end
  end
end
