class AddVPublishAtToBackstageArticle < ActiveRecord::Migration[6.0]
  def change
    add_column :backstage_articles, :publish_at, :datetime
  end
end
