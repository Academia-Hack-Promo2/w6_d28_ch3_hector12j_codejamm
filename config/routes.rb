Rails.application.routes.draw do

  # root 'jonathan#party'
 
  get 'api/j/party', to: 'jonathan#party'
  get 'api/j/', to: 'jonathan#index' 
  get 'api/j/show/:id', to: 'jonathan#show'
  post 'api/j/', to: 'jonathan#new'
  put 'api/j/:id', to: 'jonathan#update'
  delete 'api/j/:id', to: 'jonathan#delete'   
  
  # root 'hector#party'

  get 'hector', to: 'hector#party'
  get 'hector/all_partys', to: 'hector#all_partys'
  get 'hector/find/:id', to: 'hector#find'
  post 'hector/buy', to: 'hector#buy'
  put 'hector/actualizar/:id', to: 'hector#actualizar'
  delete 'hector/delete/:id', to: 'hector#delete'
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
