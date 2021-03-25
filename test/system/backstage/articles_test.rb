require "application_system_test_case"

class Backstage::ArticlesTest < ApplicationSystemTestCase
  setup do
    @backstage_article = backstage_articles(:one)
  end

  test "visiting the index" do
    visit backstage_articles_url
    assert_selector "h1", text: "Backstage/Articles"
  end

  test "creating a Article" do
    visit backstage_articles_url
    click_on "New Backstage/Article"

    fill_in "Content", with: @backstage_article.content
    fill_in "Excerpt", with: @backstage_article.excerpt
    fill_in "Seo description", with: @backstage_article.seo_description
    fill_in "Seo page title", with: @backstage_article.seo_page_title
    fill_in "Seo url", with: @backstage_article.seo_url
    fill_in "Title", with: @backstage_article.title
    click_on "Create Article"

    assert_text "Article was successfully created"
    click_on "Back"
  end

  test "updating a Article" do
    visit backstage_articles_url
    click_on "Edit", match: :first

    fill_in "Content", with: @backstage_article.content
    fill_in "Excerpt", with: @backstage_article.excerpt
    fill_in "Seo description", with: @backstage_article.seo_description
    fill_in "Seo page title", with: @backstage_article.seo_page_title
    fill_in "Seo url", with: @backstage_article.seo_url
    fill_in "Title", with: @backstage_article.title
    click_on "Update Article"

    assert_text "Article was successfully updated"
    click_on "Back"
  end

  test "destroying a Article" do
    visit backstage_articles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Article was successfully destroyed"
  end
end
