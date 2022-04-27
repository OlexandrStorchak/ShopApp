module ProductsHelper
  def errors_form_helper(product, column)
    render partial: "errors", locals: { column: column } if product.errors.where(column).any?
  end
end
