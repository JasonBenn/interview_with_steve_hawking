class Category < ActiveRecord::Base
  has_many :subcategories
  has_many :questions, through: :subcategories
end
