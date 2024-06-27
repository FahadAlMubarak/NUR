class Product < ApplicationRecord
  belongs_to :productCategory, optional: true
end
