ActiveAdmin.register Post do
  permit_params :slug, :title, :body
end
