class AddNameAuthorToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :name_author, :string
  end
end
