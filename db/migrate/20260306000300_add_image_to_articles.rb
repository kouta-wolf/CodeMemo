class AddImageToArticles < ActiveRecord::Migration[8.1]
  def change
    add_column :articles, :image, :string
  end
end
