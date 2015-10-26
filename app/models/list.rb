class List < ActiveRecord::Base
  belongs_to :product
  belongs_to :man

  def self.orders
  	orders = List.where("kind = 1")
  end

  def self.stocks
  	stocks = List.where("kind = 2")
  end

  def real_weight
  	real_weight = self.total_weight - self.quantity * self.cage_weight
  end

  def total_price
  	(self.tai_weight * self.unit_price).round()
  end

  def tai_weight
  	(real_weight * 10 / 6).round(1)
  end

end
