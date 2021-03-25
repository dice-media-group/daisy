json.extract! backstage_article, :id, :title, :content, :excerpt, :seo_page_title, :seo_description, :seo_url, :created_at, :updated_at
json.url backstage_article_url(backstage_article, format: :json)
