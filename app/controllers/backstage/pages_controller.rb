class Backstage::PagesController < ApplicationController
  before_action :set_backstage_page, only: %i[ show edit update destroy ]

  # GET /backstage/pages or /backstage/pages.json
  def index
    @backstage_pages = Backstage::Page.all
  end

  # GET /backstage/pages/1 or /backstage/pages/1.json
  def show
  end

  # GET /backstage/pages/new
  def new
    @backstage_page = Backstage::Page.new
  end

  # GET /backstage/pages/1/edit
  def edit
  end

  # POST /backstage/pages or /backstage/pages.json
  def create
    @backstage_page = Backstage::Page.new(backstage_page_params)

    respond_to do |format|
      if @backstage_page.save
        format.html { redirect_to @backstage_page, notice: "Page was successfully created." }
        format.json { render :show, status: :created, location: @backstage_page }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @backstage_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /backstage/pages/1 or /backstage/pages/1.json
  def update
    respond_to do |format|
      if @backstage_page.update(backstage_page_params)
        format.html { redirect_to @backstage_page, notice: "Page was successfully updated." }
        format.json { render :show, status: :ok, location: @backstage_page }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @backstage_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /backstage/pages/1 or /backstage/pages/1.json
  def destroy
    @backstage_page.destroy
    respond_to do |format|
      format.html { redirect_to backstage_pages_url, notice: "Page was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_backstage_page
      @backstage_page = Backstage::Page.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def backstage_page_params
      params.require(:backstage_page).permit(:title, :body)
    end
end
