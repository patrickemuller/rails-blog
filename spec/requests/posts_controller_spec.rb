# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :request do
  describe 'GET /posts/:slug' do
    let!(:post) { create(:post) }

    it 'load the 3 posts' do
      get post_path(post.slug)
      expect(response.body).to include(post.title)
    end

    it 'renders the show template' do
      get post_path(post.slug)
      expect(response).to render_template('show')
    end
  end
end
