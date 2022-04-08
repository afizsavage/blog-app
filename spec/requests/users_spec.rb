require 'rails_helper'

RSpec.describe 'Users', type: :request do
  describe 'GET /index' do
    before(:each) { get '/users' }
    it 'has a 200 success status code' do
      expect(response).to have_http_status(200)
    end

    it 'renders the correct template' do
      expect(response).to render_template(:index)
    end

    it 'should render the correct text in the template' do
      expect(response.body).to include('Here is the list of our users')
    end
  end

  describe 'GET /users/:id' do
    before(:example) { get '/users/1' }

    it 'should return 200 http_status_code' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render the correct template' do
      expect(response).to render_template(:show)
    end

    it 'should render the correct text in the template' do
      expect(response.body).to include('Here is a single user')
    end
  end
end
