Rails.application.routes.draw do

  devise_for :users
 
  authenticated :user do
    root :to => 'dashboard#user_home', as: :authenticated_root
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'dashboard#home' 
end
