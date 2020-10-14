class Product
  attr_reader :category, :name, :price, :quantity

  def initialize(category, name, price, quantity)
    @category = category
    @name = name
    @price = price
    @quantity = quantity
  end

  def unit_price
    @price
  end

  def quantity
    @quantity.to_i
  end

  def total_price
    @total_price = (@quantity.to_i * @price)
  end

end
