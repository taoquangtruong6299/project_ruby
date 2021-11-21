require "./module.rb"
class Cart
  include CrudModule
  attr_accessor :id, :user_id, :status, :address
end
