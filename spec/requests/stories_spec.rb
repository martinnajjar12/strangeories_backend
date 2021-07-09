require 'rails_helper'

RSpec.describe 'Stories', type: :request do
  before(:each) do
    post '/api/v1/stories',
         params: { title: 'title', author: 'John', description: 'description', image_url: 'some url' }
  end

  describe 'GET /index' do
    it 'should return 200 status' do
      get '/api/v1/stories'

      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /create' do
    it 'should return a 201 status' do
      post '/api/v1/stories',
           params: { author: 'Martin', title: 'test story', description: 'some description', image_url: 'some url' }

      expect(response).to have_http_status(201)
    end
  end
end
