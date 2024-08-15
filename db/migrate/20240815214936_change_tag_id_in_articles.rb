class ChangeTagIdInArticles < ActiveRecord::Migration[7.1]
  def change
    change_column_null :articles, :tag_id, true
  end
end
