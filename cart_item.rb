require "./module.rb"
class CartItem
  include CrudModule
  attr_accessor :id, :productId, :cartId, :isbn, :price, :discount, :qty

end
