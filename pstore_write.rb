def create
  require './product_class.rb'
  product = Product.new(1,"javascript","ABC","ABC","ABC",2,123,23,2)
    print "Nhap id:"
    id = gets.chomp.to_i
    print "Nhap title:"
    title = gets.chomp
    print "Nhap noi dung"
    description = gets.chomp
    print "Nhap tac gia"
    author = gets.chomp
    print "Nhap ten cong ty"
    company = gets.chomp
    print "Nhap category_id"
    category_id = gets.chomp.to_i
    print "Nhap gia"
    price = gets.chomp.to_i
    print "Nhap giam gia"
    discount = gets.chomp.to_i
    print "Nhap user_id"
    user_id = gets.chomp.to_i
    product = Product.new(id,title,description,author,company,category_id,price,discount,user_id)
  require 'pstore'
  store = PStore.new('my_product')
  store.transaction do
    store[:product] ||= Array.new
    store[:product] << product
  end
end

create()
