require "./module.rb"
class Product
  include CrudModule
  attr_accessor :id, :name, :description, :author, :company, :product_category_id, :price, :discount, :user_id
  def initialize id,name,description,author,company,product_category_id,price,discount,user_id
    @id = id
    @name = name
    @description = description
    @author = author
    @company = company
    @product_category_id = product_category_id
    @price = price
    @discount = discount
    @user_id = user_id
  end
end
product = Product.new(1,"javascript","ABC","ABC","ABC",2,123,23,2)
product2 = Product.new(2,"javascript","ABC","ABC","ABC",2,123,23,2)
arr = Array.new
arr.push(product,product2)
p arr
product.show arr,1
