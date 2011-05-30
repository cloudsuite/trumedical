Tmror::Application.routes.draw do
 
  get "products/shop"

  get "clinicians/show"
  get "patients/show"
  get "payors/show"
  
  get "products_ilc_page/show"
  get "products_llc_page/show"
  get "product_page/show"
  
  get "site/sitemap"
  
  get "products_llc_page/accessories"
  get "products_llc_page/combination"
  get "products_llc_page/diathermy"
  get "products_llc_page/electrodes"
  get "products_llc_page/iontophoresis"
  get "products_llc_page/lotions"
  get "products_llc_page/stim"
  get "products_llc_page/ultrasound"

  
  

  resources :users

  resources :categories

  get "company/about"
  get "company/contact"
  get "company/faqs"
  get "company/news"
  get "company/shipping"
  get "company/returns"
  get "company/privacy"
  get "company/terms"
  get "company/services"
  get "company/downloads"
  get "home/index"
  
  root :to => "home#index", :as => "index"

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
