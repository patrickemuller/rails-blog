require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'validations' do
    it { is_expected.to validate_presence_of(:slug) }
    it { is_expected.to validate_presence_of(:body) }
    it { is_expected.to validate_presence_of(:title) }
    it { is_expected.to uniqueness_presence_of(:slug) }
    it { is_expected.to uniqueness_presence_of(:title) }
  end
end
