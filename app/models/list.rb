class List < ActiveRecord::Base
  belongs_to :product
  belongs_to :man

  def self.orders
  	orders = List.where("kind = 1")
  end

  def self.stocks
  	stocks = List.where("kind = 2")
  end
end
