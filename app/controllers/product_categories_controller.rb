class ProductCategoriesController < ApplicationController
  before_action :set_category, only: %i[show edit update destroy]

  def index
    @categories = ProductCategory.all
  end

  def new
    @category = ProductCategory.new
  end

  def create
    @category = ProductCategory.new(get_product_categories_params)
    if @category.save!
      redirect_to product_category_path @category
      flash[:green] = "Category successfully created"
    else
      redirect_to new_product_category_path
    end
  end

  def show
  end

  def edit
  end

  def update
    if @category.update(get_product_categories_params)
      redirect_to product_category_path
      flash[:green] = "Category successfully updated"
    else
      redirect_to edit_product_category_path
    end
  end

  def destroy
    if @category.destroy
      redirect_to products_category_path, status: :see_other
      flash[:red] = "Category successfully deleted"
    else
    end
  end

  private

  def get_product_categories_params
    params.require(:product_category).permit(:name)
  end

  def set_category
    @category = ProductCategory.find(params.require(:id))
  end
end
