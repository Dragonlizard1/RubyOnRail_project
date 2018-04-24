Rails.application.routes.draw do


  get 'likes/create'

  get 'likes/destroy'

  get 'users/new' => "users#new"
  get 'users/edit' => "users#edit"
  root "users#index" 
  post "users/create" => "users#create"

  get "logout1" => "users#logging_out"

  get "sessions/new" => "users#index"
  post "sessions/create" => "users#create"
  post "sessions/check" => "users#check"
  post "users/:id/destroyer" =>  "users#destroyer"
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"

post "secrets/likes/:secret_id" => "likes#create"
post "secrets/unlikes/:secret_id" => "likes#destroy"


  post  "secrets/destroy/:secret_id" => "secrets#destroy"
  get "secrets" => "secrets#show"
  post "secrets/:id" => "secrets#create"

  get 'users/:id' => "users#show"
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
