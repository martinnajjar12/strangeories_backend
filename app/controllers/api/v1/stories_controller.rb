class Api::V1::StoriesController < ApplicationController
  def index
    stories = Story.all
    render json: stories, status: 200
  end

  def create
    new_story = Story.new(story_params)

    if new_story.save
      render json: new_story, status: 201
    else
      render json: new_story.errors, status: 422
    end
  end
  
  def show

  end

  def story_params
    params.permit(:title, :description, :image_url, :author)
  end
end
