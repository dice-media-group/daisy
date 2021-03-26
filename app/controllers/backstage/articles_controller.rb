class Backstage::ArticlesController < ApplicationController
  before_action :set_backstage_article, only: %i[ show edit update destroy ]

  # GET /backstage/articles or /backstage/articles.json
  def index
    @backstage_articles = Backstage::Article.all
  end

  # GET /backstage/articles/1 or /backstage/articles/1.json
  def show
  end

  # GET /backstage/articles/new
  def new
    @backstage_article = Backstage::Article.new
  end

  # GET /backstage/articles/1/edit
  def edit
  end

  # POST /backstage/articles or /backstage/articles.json
  def create
    @backstage_article = Backstage::Article.new(backstage_article_params)

    respond_to do |format|
      if @backstage_article.save
        format.html { redirect_to @backstage_article, notice: "Article was successfully created." }
        format.json { render :show, status: :created, location: @backstage_article }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @backstage_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backstage/articles/1 or /backstage/articles/1.json
  def update
    respond_to do |format|
      if @backstage_article.update(backstage_article_params)
        format.html { redirect_to @backstage_article, notice: "Article was successfully updated." }
        format.json { render :show, status: :ok, location: @backstage_article }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @backstage_article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backstage/articles/1 or /backstage/articles/1.json
  def destroy
    @backstage_article.destroy
    respond_to do |format|
      format.html { redirect_to backstage_articles_url, notice: "Article was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backstage_article
      @backstage_article = Backstage::Article.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def backstage_article_params
      params.require(:backstage_article).permit(:title, :body, :excerpt, :seo_page_title, :seo_description, :seo_url)
    end
end
