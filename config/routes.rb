Rails.application.routes.draw do
  root to: 'chats#index'
  resources :chats, only: [:show, :new, :create] do
    resources :messages, only: [:create], shallow: true
  end
end
