class AddVisibilityToBackstageArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :backstage_articles, :visibility, :boolean
  end
end
