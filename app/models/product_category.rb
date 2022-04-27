class ProductCategory < ApplicationRecord
  has_many :products
  before_validation :name_remove_spaces
  validates :name, presence: { message: "Category name is empty" },
                   length: { minimum: 5, message: "Category name min 5 chars" },
                   uniqueness: { message: "Category with same name already exist" }
  

  def name_remove_spaces
    self.name = name.lstrip.rstrip
  end
end
