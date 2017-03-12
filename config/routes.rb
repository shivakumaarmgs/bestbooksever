Rails.application.routes.draw do

  resources :books

  devise_for :users

  devise_for :admins, path: 'admins', skip: [:registrations]

  authenticated :user do
    root :to => 'dashboard#user_home', as: :user_root
  end

  authenticated :admin do
    root :to => 'admins/books#new', as: :admin_root
  end

  scope :admins, module: :admins, as: 'admins' do
    resources :books
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#home' 
end
