Rails.application.routes.draw do
 devise_for :users
 root to: 'pages#home'
 # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 resources :corridors, only: [:index, :show, :new, :create], :shallow => true do
   resources :bookings, only: [:index, :new, :create]
 end

 get "/address", to: "corridors#define_address"

end
