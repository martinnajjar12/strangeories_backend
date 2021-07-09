require 'rails_helper'

RSpec.describe "Likes", type: :request do
  before(:each) do
    @story = Story.create(author: 'Martin', title: 'strangeStory', description: 'some desc', image_url: 'some url')
  end

  describe "POST /create" do
    it 'should return status 201' do
      post "/api/v1/stories/#{@story.id}/likes", params: {count: 1, id: @story.id}

      expect(response).to have_http_status(201)
    end
  end
end
