#<<<<<<< HEAD
CbuHome::Application.routes.draw do |map|
#get "cbustore/index" #add to try out
#resources :cbus #add to try out
#root :to => 'cbustore#index', :as => 'cbustore' #add to try out 
#=======
#CbuHome::Application.routes.draw do #|map|
#get "cbustore/index"  #add to try out
#resources :cbus  #add to try out

#  root :to => 'cbustore#index', :as => 'cbustore'  #add to try out
  
#>>>>>>> c06b73b7d6a90f485cd2669e27ccb68178a227cd
  
  map.resources :users

  map.resources :line_items

  map.connect 'cbus/map',:controller=>'cbus', :action=>'map'

  map.connect 'offices/map',:controller=>'offices', :action=>'map'

  map.connect 'orders/map',:controller=>'orders', :action=>'map'
  
  map.resources :orders

  map.resources :offices

  map.resources :cbus

  map.resources :migrations 
  
map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'  
  
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
