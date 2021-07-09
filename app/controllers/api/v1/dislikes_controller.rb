class Api::V1::DislikesController < ApplicationController
  def create
    story = Story.find(params[:story_id])

    dislike = story.dislikes.build(dislikes_params)

    if dislike.save
      render json: story, status: 201
    else
      render json: dislike.errors, status: 422
    end
  end

  def dislikes_params
    params.permit(:count)
  end
end
