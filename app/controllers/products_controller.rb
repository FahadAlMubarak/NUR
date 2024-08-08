class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_product, only: [:show, :edit, :update]
  def index
    @products = Product.all
    @products = Product.order(:created_at)
  end

  def show
  end

  def new
    @product = Product.new
  end

  def create
    product = Product.new(product_params)
    if product.save
      redirect_to product_path(product)
    else
      render :new
    end

  end


  def edit
  end


  def update
    @product.update(product_params)
    redirect_to product_path(@product)
  end

  

  private
  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :description, :product_category_id)
  end
end
