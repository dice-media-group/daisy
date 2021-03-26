class CreateBackstageSearchEngineListings < ActiveRecord::Migration[6.0]
  def change
    create_table :backstage_search_engine_listings do |t|
      t.string :title
      t.text :description
      t.text :url

      t.timestamps
    end
  end
end
