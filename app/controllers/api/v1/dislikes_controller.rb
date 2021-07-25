class Api::V1::DislikesController < ApplicationController
  def create
    if (author_signed_in?)
      dislike = current_author.dislikes.new(story_id: params[:story_id])

      if dislike.save
        render json: story, status: 201
      else
        render json: dislike.errors, status: 422
      end
    else
      render json: { error: 'You have to sign in before disliking a story' }, status: 401
    end
  end
end
