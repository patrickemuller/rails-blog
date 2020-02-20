# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PagesController, type: :request do
  describe 'GET /' do
    before { create_list(:post, 3) }

    it 'load the 3 posts' do
      get root_path
      expect(response.body).to include('post-preview')
    end

    it 'renders the homepage template' do
      get root_path
      expect(response).to render_template('homepage')
    end
  end
end
