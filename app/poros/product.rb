# class Product 
#   attr_reader :id,
#               :name,
#               :images,
#               :description,
#               :price
#   def initialize(product_input, price_input)
#     @id = product_input[:id]
#     @name = product_input[:name]
#     @images = product_input[:images]
#     @description = product_input[:description]
#     @price = to_dollars(price_input)
#   end

#   def to_dollars(price_input)
#     price_input[:unit_amount] / 100.00
#   end
end