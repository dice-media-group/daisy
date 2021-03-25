class CreateBackstageArticles < ActiveRecord::Migration[6.0]
  def change
    create_table :backstage_articles do |t|
      t.string :title
      t.string :content
      t.string :excerpt
      t.string :seo_page_title
      t.string :seo_description
      t.string :seo_url

      t.timestamps
    end
  end
end
