Rails.application.routes.draw do

  namespace :user do
  get 'users/show'
  end

  namespace :user do
  get 'users/index'
  end

  namespace :user do
  get 'users/destroy'
  end

  namespace :user do
  get 'users/new'
  end

  namespace :user do
  get 'users/create'
  end

  namespace :user do
  get 'mobilephones/show'
  end

  namespace :user do
  get 'mobilephones/index'
  end

  namespace :user do
  get 'mobilephones/destroy'
  end

  namespace :user do
  get 'mobilephones/new'
  end

  namespace :user do
  post 'mobilephones/create'
  end

  namespace :user do
  get 'certificates/show'
  end

  namespace :user do
  get 'certificates/index'
  end

  namespace :user do
  get 'certificates/destroy'
  end

  namespace :user do
  get 'certificates/new'
  get 'certificates/download_ca'
  end

  namespace :user do
  post 'certificates/create'
  end

  namespace :user do
  get 'nfcs/show'
  end

  namespace :user do
  get 'nfcs/index'
  end

  namespace :user do
  get 'nfcs/destroy'
  end

  namespace :user do
  get 'nfcs/new'
  end

  namespace :user do
  get 'nfcs/create'
  end

  get 'user/create'

  get 'user/new'

  get 'user/edit'

  get 'user/show'

  get 'user/update'

  get 'user/destroy'

  devise_for :users
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
