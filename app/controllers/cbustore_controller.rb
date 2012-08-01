class CbustoreController < ApplicationController
  def index
    @cbus = Cbu.find_cbu_for_work
    #this next line is added from page 121 for the ajax code
    @cart = find_cart
  end

# the following is from page 102 and page 113
  def add_to_request
    cbu = Cbu.find(params[:id])
    @cart = find_cart
    @cart.add_cbu(cbu)
    redirect_to_index

# the following is from page 109
  rescue ActiveRecord::RecordNotFound
    logger.error("Attempt to access invalid cbu #{params[:id]}")
#    flash[:notice] = "Invalid CBU address"
#    redirect_to :action => 'index'
    redirect_to_index("Invalid CBU address")
  end

# the following is from page 112 and page 113
  def empty_cart
    session[:cart] = nil
#    flash[:notice] = "Your Request List is currently empty"
#    redirect_to :action => 'index'
    redirect_to_index("Your Request List is currently empty")
  end

# the following is from page 145
def save_order
    @cart = find_cart
    @order = Order.new(params[:order])
    @order.add_line_items_from_cart(@cart)
    if @order.save
      session[:cart] = nil
      redirect_to_index("Request submitted - add more or finish")
    else
      render :action => 'checkout'
    end
  end


  # Headfirst page 174
  def find
     @order = Order.find_all_by_route_number(params[:search_string])
  end


 def checkout
  @cart = find_cart
  if @cart.items.empty?
    redirect_to_index("Your cart is empty")
  else
    @order = Order.new
  end
end




# the following is from page 167
protected
def authorize
end


#the following is from page 101
private

def redirect_to_index(msg = nil)
  flash[:notice] = msg if msg
  redirect_to :action => 'index'
end
# the following is from page 101
  def find_cart
   session[:cart] ||= Cart.new    #later on page 172 the book makes this
                                  #@cart = (session[:cart] ||= Cart.new)
                                  # additionally adds to the cbustore_controller.rb
                                  # before_filter :find_cart, :except => :empty_cart
                                  #final listing is shown on page 696
  end
end




