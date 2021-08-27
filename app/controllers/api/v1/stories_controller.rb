class Api::V1::StoriesController < ApplicationController
  def index
    stories = Story.with_attached_image.all
    render json: stories, status: 200
  end

  def create
    if author_signed_in?
      new_story = current_author.stories.build(story_params)

      if new_story.save
        render json: new_story, status: 201
      else
        render json: new_story.errors, status: 422
      end
    else
      render json: { error: 'You have to sign in before creating a new story' }, status: 401
    end
  end

  def show; end

  def story_params
    params.permit(:title, :description, :image)
  end
end
