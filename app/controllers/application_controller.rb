class ApplicationController < ActionController::Base
  before_action :get_categories

  private

  def get_categories
    @categories_list = ProductCategory.all
  end
end
