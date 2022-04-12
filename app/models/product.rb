class Product < ApplicationRecord
    validates :p_name, presence: true,length: {minimum: 5}
    validates :p_description, presence: true, length: {minimum: 5}
    validates :p_price, presence: true
end
