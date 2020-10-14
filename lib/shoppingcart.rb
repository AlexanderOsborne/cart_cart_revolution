class ShoppingCart
  attr_reader :name, :capacity, :products,

  def initialize(name, capacity, products = [])
    @name = name
    @capacity = capacity
    @products = products
  end

  def capacity
    @capacity.to_i
  end

  def add_product(product)
    @products << product
  end

  def details
    {name: @name, capacity: @capacity.to_i}
  end

  def total_number_of_products
    product_total = @products.price.sum
  end

  def is_full?
    if total_number_of_products >= @capacity
      return true
    else return false
    end
  end

  def products_by_category(category)
    expected = []
    products.find_all do |product|
      if product.category == category
        expected << product
      end
    end
  end

  def percentage_occupied
    percent_occupied = (total_number_of_products.to_f / category.to_f)
  end

  def sorted_products_by_quantity
    @products.sort
  end

  def product_breakdown
    product_categories = ShoppingCart.category.map do |product_category|
      product_category.category
  end.uniq
  end
end
