class Api::V1::LikesController < ApplicationController
  def create
    story = Story.find(params[:story_id])

    like = story.likes.build(likes_params)

    if like.save
      render json: story, status: 201
    else
      render json: story.errors, status: 422
    end
  end

  def likes_params
    params.permit(:count)
  end
end
