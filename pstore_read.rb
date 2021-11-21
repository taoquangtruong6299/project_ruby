require './product_class.rb'
  require 'pstore'
  store = PStore.new('my_product')
  products = []
  store.transaction do
    products = store[:product]
  end
  products.each do |product|
    puts "id = #{product.id}"
    puts "title = #{product.name}"
    puts "description = #{product.description}"
    puts "author = #{product.author}"
    puts "company = #{product.company}"
    puts "category_id = #{product.product_category_id}"
    puts "price = #{product.price}"
    puts "discount = #{product.discount}"
    puts "user_id = #{product.user_id}"
    puts "==============================="
    end
def show
  require './product_class.rb'
  require 'pstore'
  store = PStore.new('my_product')
  products = []
  store.transaction do
    products = store[:product]
  end
  products.each do |product|
  puts "id = #{product.id}"
  puts "title = #{product.name}"
  puts "description = #{product.description}"
  puts "author = #{product.author}"
  puts "company = #{product.company}"
  puts "category_id = #{product.product_category_id}"
  puts "price = #{product.price}"
  puts "discount = #{product.discount}"
  puts "user_id = #{product.user_id}"
  puts "==============================="
  end
end
def update
  require './product_class.rb'
  require 'pstore'
  store = PStore.new('my_product')
  products = []
  store.transaction do
    products = store[:product]
  end
  id = gets.chomp.to_i
  p products.length
  0.upto (products.length-1) do |i|
    if products[i].id == id
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
      products[i].id = id
      products[i].name = title
      products[i].description = description
      products[i].author = author
      products[i].company = company
      products[i].product_category_id = category_id
      products[i].price = price
      products[i].discount = discount
      products[i].user_id = user_id
      break
    end
  end
end

# update()

def delete
  require './product_class.rb'
  require 'pstore'
  store = PStore.new('my_product')
  products = []
  store.transaction do
    products = store[:product]
    p "Delete product"
    print "Input id: "
    id = gets.chomp.to_i

        0.upto (products.length-1) do |i|
            if products[i].id == id
                $d = i.to_i
                p "Delete success"
                break
            end
        end
        products.delete_at($d)
    p "List product after delete"
  end

  # products.each do |product|
  #   puts "id = #{product.id}"
  #   puts "title = #{product.name}"
  #   puts "description = #{product.description}"
  #   puts "author = #{product.author}"
  #   puts "company = #{product.company}"
  #   puts "category_id = #{product.product_category_id}"
  #   puts "price = #{product.price}"
  #   puts "discount = #{product.discount}"
  #   puts "user_id = #{product.user_id}"
  #   puts "==============================="
  # end
end

show()
