module ApplicationHelper
  def set_title_helper(title_name = "")
    if title_name.present?
      content_for :title, "#{title_name} | ShopApp"
    else
      content_for :title, "ShopApp"
    end
  end

  def set_header_helper
    @categories = ProductCategory.all
    content_for :header do
      render partial: "header/header"
    end
  end
end
