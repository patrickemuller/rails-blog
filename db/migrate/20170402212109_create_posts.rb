class CreatePosts < ActiveRecord::Migration[4.2]
  def change
    create_table :posts do |t|
      t.text :body, null: false, default: ''
      t.string :slug, null: false, default: ''
      t.string :title, null: false, default: ''

      t.timestamps null: false
    end
  end
end
