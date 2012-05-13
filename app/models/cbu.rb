class Cbu < ActiveRecord::Base
  has_many :line_items
  self.include_root_in_json = false
  
#this code puts the cbu address in correct format for the google maps app
  def full_address
    "#{address}, #{city}, #{state}, #{zip}"
  end

#this method code is from page 89
#this method passes an array with cbu objects-each row returned from the database sorted by address
  def self.find_cbu_for_work
#the following code finds all cbus with a parcel locker and returns each row sorted by route number
    find(:all,:order => "route_number", :conditions => ["parcel_locker = 1 or parcel_locker = 2"])
  end  
end


