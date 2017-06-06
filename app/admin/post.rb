ActiveAdmin.register Post do
  permit_params :slug, :title, :body

  index do
    id_column
    column :slug
    column :title
    column :created_at
    actions
  end
end
