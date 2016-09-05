Rails.application.routes.draw do
  # resources :users
  # get 'users/' => 'users#index'
  # get 'users/:id' => 'users#show', :as => 'user'
  # post 'users/' => 'users#create'
  # get 'users/new' => 'users#new', :as => 'new_user'
  # get 'users/:id/edit' => 'users#edit', :as => 'edit_user'
  # patch 'users/:id' => 'users#update'
  # put 'users/:id' => 'users#update'
  # delete 'users/:id' => 'users#destroy'


  resource :users, only: [:index, :show, :update, :create, :destroy]

  resource :contacts, only: [:index, :show, :update, :create, :destroy]

  resource :contact_shares, only: [:index, :show, :update, :create, :destroy]

end
