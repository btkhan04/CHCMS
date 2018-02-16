Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#index'
  get 'pages/index'
get '/devise/registrations/change_password' => 'devise#registrations#change_password'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
