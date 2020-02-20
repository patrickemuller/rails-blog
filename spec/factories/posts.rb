# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    sequence(:title) { |n| "My Post #{n}" }
    sequence(:slug)  { |n| "my-post-#{n}" }
    body { 'Lorem ipsum dolor sit amet ' * 10 }
  end
end
