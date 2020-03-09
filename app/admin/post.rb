# frozen_string_literal: true

ActiveAdmin.register Post do
  permit_params :slug, :title, :body

  index do
    id_column
    column :slug
    column :title
    column :created_at
    actions
  end

  form do |f|
    f.inputs 'Post Details' do
      f.input :title
      f.input :slug
      f.input :body
    end
    f.actions
  end
end
