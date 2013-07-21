class Subcategory < ActiveRecord::Base
  attr_accessible :name, :category_id
  belongs_to :category
  has_many :questions
end
