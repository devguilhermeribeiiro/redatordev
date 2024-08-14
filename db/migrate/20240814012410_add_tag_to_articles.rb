class AddTagToArticles < ActiveRecord::Migration[7.1]
  def change
    add_column :articles, :tag, :string
  end
end
