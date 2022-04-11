class ProductsController < ApplicationController
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
    else
      redirect_to new_product_path
    end
  end

  def show
    @product = Product.find(get_product_id)
  end

  def edit
    @product = Product.find(get_product_id)
  end

  def update
    @product = Product.find(get_product_id)
    if @product.update(get_product_params)
      redirect_to product_path
    else
      redirect_to edit_product_path
    end
  end

  def destroy
    @product = Product.find(get_product_id)
    if @product.destroy
      redirect_to products_path, status: :see_other
    else
    end
  end

  private

  def get_product_params
    params.require(:product).permit(:p_name, :p_description, :p_price)
  end

  def get_product_id
    params.require(:id)
  end
end
