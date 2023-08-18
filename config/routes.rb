Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :set_numbers, only: [:index, :create, :destroy, :update, :show]

  post 'authenticate', to: 'authentication#create'
  delete '/set_numbers/exercise/:id', to: 'set_numbers#delete_exercise'
  scope '/auth' do
    resources :users, param: :username
    post '/login', to: 'authentication#login'
  end
end
