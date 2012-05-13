class LineItem < ActiveRecord::Base
  belongs_to :order
  belongs_to :cbu
self.include_root_in_json = false
# the following code is from page 147 of the book)

# def self.from_cart_item(cart_item)
#    li = self.new
#    li.product     = cart_item.product
 #   li
#  end
#end

# the code below is trial and error attempts only

  def self.from_cart_item(cart_item)
    li = self.new
    li.cbu_id     = cart_item.id
 #   li.cbu_id        = cart_item.id
    li
end

end