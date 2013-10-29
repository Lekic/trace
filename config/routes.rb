Trace::Application.routes.draw do
  get "landing/index"
  get "welcome/index"

=begin  
  get "sightings/index"
  get "sightings/new"
  get "sightings/edit"
  get "sightings/show"
  get "reports/index"
  get "reports/new"
  get "reports/edit"
  get "reports/show"
  get "pests/index"
  get "pests/new"
  get "pests/edit"
  get "pests/show"
  get "users/index"
  get "users/new"
  get "users/edit"
  get "users/show"
=end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".


  # You can have the root of your site routed with "root"
  root 'landing#index'

  # Custom route for users root page
  devise_for :users do
    get 'users', :to => 'welcome#index', :as => :user_root
  end

  resources :users, :pests, :sightings, :reports

  #match '/users/:id', :to => 'users#show',    :as => :user,         :via => :get
  match '/users/:id', :to => 'users#destroy', :as => :destroy_user, :via => :delete

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
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

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end
  
  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
