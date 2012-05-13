class Order < ActiveRecord::Base
  has_many :line_items
  has_many :cbus, :through=>:line_items
  self.include_root_in_json = false
  
#this code puts the cbu address in correct format for the google maps app
  def full_address
    "#{address}, #{city}, #{state}, #{zip}"
  end
  
  PROBLEM_TYPES = [
  #  Displayed                 stored in db
    ["Key Broken in Lock",     "key broken in lock"],
    ["No Keys - All Missing",  "no keys - all missing"],
    ["Arrow Lock Broken",      "arrow lock broken"],
    ["Vandalism",              "vandalism"],
    ["Graffitti",              "graffitti"],
    ["Other-Describe",         "other-describe"]
  ]
  
  LOCKER_NUM = [
  #  Displayed                 stored in db
    ["1 TOP",                  "1 TOP"],
    ["2 BOTTOM",               "2 BOTTOM"],
    ["Both 1&2",               "both"],
    ["1-P",                    "1-P"],
    ["2-P",                    "2-P"],
    ["Other-Describe",         "Other"]
  ]
#(this is the code as it appears in book on page 146)

#def add_line_items_from_cart(cart)
#    cart.items.each do |item|
#      li = LineItem.from_cart_item(item)
#      line_items << li
#   end
#end
  
def add_line_items_from_cart(cart)
    cart.items.each do |item|
      li = LineItem.from_cart_item(item)# "from_cart_item(item)" is a method? to get the item from cart, store in li #
      line_items << li                  # appends the li stuff to line_items?
   end   
   
   
  end


end
