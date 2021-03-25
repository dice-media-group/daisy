require 'test_helper'

class Backstage::ArticlesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backstage_article = backstage_articles(:one)
  end

  test "should get index" do
    get backstage_articles_url
    assert_response :success
  end

  test "should get new" do
    get new_backstage_article_url
    assert_response :success
  end

  test "should create backstage_article" do
    assert_difference('Backstage::Article.count') do
      post backstage_articles_url, params: { backstage_article: { content: @backstage_article.content, excerpt: @backstage_article.excerpt, seo_description: @backstage_article.seo_description, seo_page_title: @backstage_article.seo_page_title, seo_url: @backstage_article.seo_url, title: @backstage_article.title } }
    end

    assert_redirected_to backstage_article_url(Backstage::Article.last)
  end

  test "should show backstage_article" do
    get backstage_article_url(@backstage_article)
    assert_response :success
  end

  test "should get edit" do
    get edit_backstage_article_url(@backstage_article)
    assert_response :success
  end

  test "should update backstage_article" do
    patch backstage_article_url(@backstage_article), params: { backstage_article: { content: @backstage_article.content, excerpt: @backstage_article.excerpt, seo_description: @backstage_article.seo_description, seo_page_title: @backstage_article.seo_page_title, seo_url: @backstage_article.seo_url, title: @backstage_article.title } }
    assert_redirected_to backstage_article_url(@backstage_article)
  end

  test "should destroy backstage_article" do
    assert_difference('Backstage::Article.count', -1) do
      delete backstage_article_url(@backstage_article)
    end

    assert_redirected_to backstage_articles_url
  end
end
