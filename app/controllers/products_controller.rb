class ProductsController < ApplicationController
  rescue_from ActiveRecord::RecordNotFound, with: :not_found
  before_action :set_product, only: %i[show edit update destroy]

  def index
    @products = Product.all
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(get_product_params)
    if @product.save
      redirect_to product_path @product
      flash[:notice] = "Product successfully created"
    else
      msg = ""
      redirect_to new_product_path
      @product.errors.full_messages.each do |m|
        msg.concat(m).concat(" ")
      end
      flash[:error] = msg
    end
  end

  def show
  end

  def edit
  end

  def update
    if @product.update(get_product_params)
      redirect_to product_path
      flash[:notice] = "Product successfully updated"
    else
      redirect_to edit_product_path
      msg = ""
      @product.errors.full_messages.each do |m|
        msg.concat(m).concat(" ")
      end
      flash[:error] = msg
    end
  end

  def destroy
    if @product.destroy
      redirect_to products_path, status: :see_other
      flash[:delete] = "Product successfully deleted"
    else
    end
  end

  def product_not_found
  end

  def search
  end

  private

  def not_found
    redirect_to product_not_found_path
  end

  def get_product_params
    params.require(:product).permit(:p_name, :p_description, :p_price, :product_category_id)
  end

  def set_product
    @product = Product.find(params.require(:id))
    @category = ProductCategory.find(@product.product_category_id)
  end
end
