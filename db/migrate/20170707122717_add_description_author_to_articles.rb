class AddDescriptionAuthorToArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :description_author, :string
  end
end
