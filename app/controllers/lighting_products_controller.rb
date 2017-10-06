class LightingProductsController < ApplicationController
  before_action :set_lighting_product, only: [:show, :edit, :update, :destroy]

  # GET /lighting_products
  # GET /lighting_products.json
  def index
    @lighting_products = LightingProduct.all
  end

  # GET /lighting_products/1
  # GET /lighting_products/1.json
  def show
  end

  # GET /lighting_products/new
  def new
    @lighting_product = LightingProduct.new
  end

  # GET /lighting_products/1/edit
  def edit
  end


  def recommended_products
    @lighting_products = LightingProduct.get_recommended(survey_form_params)
  end

  # POST /lighting_products
  # POST /lighting_products.json
  def create
    @lighting_product = LightingProduct.new(lighting_product_params)

    respond_to do |format|
      if @lighting_product.save
        format.html { redirect_to @lighting_product, notice: 'Lighting product was successfully created.' }
        format.json { render :show, status: :created, location: @lighting_product }
      else
        format.html { render :new }
        format.json { render json: @lighting_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lighting_products/1
  # PATCH/PUT /lighting_products/1.json
  def update
    respond_to do |format|
      if @lighting_product.update(lighting_product_params)
        format.html { redirect_to @lighting_product, notice: 'Lighting product was successfully updated.' }
        format.json { render :show, status: :ok, location: @lighting_product }
      else
        format.html { render :edit }
        format.json { render json: @lighting_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lighting_products/1
  # DELETE /lighting_products/1.json
  def destroy
    @lighting_product.destroy
    respond_to do |format|
      format.html { redirect_to lighting_products_url, notice: 'Lighting product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lighting_product
      @lighting_product = LightingProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lighting_product_params
      params.require(:lighting_product).permit(:index, :show)
    end


    def survey_form_params
       params.require(:lighting_product).permit(:index, :show) 
    end
end
