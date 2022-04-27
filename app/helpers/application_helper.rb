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

  def set_user_helper
    login = session[:login]
    login ? "Logout" : "Login"
  end

  def set_login_button_color_helper
    login = session[:login]
    login ? "btn btn-danger" : "btn"
  end

  def header_flash_helper(flash)
    alert_style = { "green" => "alert alert-success", "red" => "alert alert-danger" }
    render partial: "header/header_flash",
           locals: { alert_style: alert_style[flash.keys.first], alert_text: flash[flash.keys.first] }
  end
end
