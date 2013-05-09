ProjThree::Application.routes.draw do
 
 
  get "devise/user/view_user_settings_page"

  get "devise/user/view_add_user_page"

  get "devise/user/view_remove_user_page"

  get "devise/user/view_users"

  get "devise/user/add_user"

  get "devise/user/remove_user"

  match "devise/user/add_user" => "user#add_user"

  get "home/index"

  devise_for :users, path_names: { sign_out: 'sign_out' }

  get "devise/settings/view_settings_page"

  get "devise/settings/set_settings"

  get "devise/settings/retreive_settings"

  get "devise/feedback/submit_feedback"

  get "devise/feedback/view_feedback"

  get "devise/popular_news/show_popular_news"

  get "devise/latest_news/show_latest_news"

  get "devise/sports_news/show_sports_news"

  get "devise/business_news/show_business_news"
  
  match "devise/feedback/submit_feedback" => "feedback#submit_feedback"
  
  match "devise/settings/set_settings" => "settings#set_settings"

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
   #root :to => 'welcome#index'

   root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
