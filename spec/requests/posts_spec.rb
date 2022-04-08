require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  describe 'GET /index' do
    before(:each) { get '/users/:user_id/posts' }
    it 'has a 200 success status code' do
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      expect(response).to render_template(:index)
    end

    it 'should render the correct text in the template' do
      expect(response.body).to include('Here are the posts for the selected user')
    end
  end

  describe 'GET single post' do
    before(:each) { get '/users/:user_id/posts/:id' }

    it 'should return 200 http_status_code' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render the correct template' do
      expect(response).to render_template(:show)
    end

    it 'should render the correct text in the template' do
      expect(response.body).to include('Here is the selected post user')
    end
  end
end
