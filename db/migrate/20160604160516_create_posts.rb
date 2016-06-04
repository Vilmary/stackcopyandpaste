class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :category

      t.timestamps null: false
    end
  end
end