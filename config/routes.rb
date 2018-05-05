Rails.application.routes.draw do

  resources :notes
  resources :medicals
 resources :shifts
 resources :residents
 mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  # devise_for :users
  root to: 'pages#index'
  get 'pages/index'
  devise_for :users, :controllers => { registrations: 'registrations' }

  get "mailbox/inbox" => "mailbox#inbox", as: :mailbox_inbox
  get "mailbox/sent" => "mailbox#sent", as: :mailbox_sent
  get "mailbox/trash" => "mailbox#trash", as: :mailbox_trash

resources :conversations do
    member do
      post :reply
      post :trash
      post :untrash
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
