module ApplicationHelper
  def set_title_helper(title_name = "")
    if title_name.present?
       content_for :title, "#{title_name} | ShopApp"
    else
        content_for :title, "ShopApp"
    end
  end

  def product_categories_list_helper
    @categories = ProductCategory.all
  end
end
