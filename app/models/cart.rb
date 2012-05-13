
# the following is from page 101
class Cart
  attr_reader :items
  
  def initialize
    @items = []
  end
  
  def add_cbu(cbu)
    @items << cbu
  end
end


# (this is the way it is in book on page 101)

#class Cart
#  attr_reader :items
#  
#    def initialize 
#      @items = []
#    end

#    def add_product(product)
#      @items << product
#    end
#  end

