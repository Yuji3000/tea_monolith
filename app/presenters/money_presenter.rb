class MoneyPresenter 
  attr_reader :product
  def initialize(product)
    @product = product
  end

  def format_price
    "$#{sprintf("%.2f", product.price)}"
  end
end