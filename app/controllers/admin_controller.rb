class AdminController < ApplicationController
     # just display the form and wait for user to enter a name and password
     # the following code is on page 162 of book
  def login
    if request.post?
      user = User.authenticate(params[:name], params[:password])#in the table - attribute 'password' is "hatched_password"
      if user
        session[:user_id] = user.id
        redirect_to(:action => "index")  #The "index" here is a "current orders" status display. Located in View/admin/index.html.erb file. 
                                         #Need to direct to view with either the "Maintenance" type user or the "Operations" 
                                         #type of user. Discovered based on the type user attribute in the User file.????
                                         #The "Maintenance" or "Operations" catagories provide different functions.
                                         
                                         #The "index" view with "current orders" status display should then share the view with the function
                                         #choices available to each type user.
      else
        flash.now[:notice] = "Invalid user/password combination"
      end
    end
  end

  def logout
    session[:user_id] = nil
    flash[:notice] = "Logged out"
    redirect_to(:action => "login")
  end

  def index
  @total_orders = Order.count(:all, :conditions=>"work_complete IS NULL")
  end

end
