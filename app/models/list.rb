class List < ActiveRecord::Base
  has_many :products
  has_many :men
end
