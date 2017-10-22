Rails.application.routes.draw do
  scope '/api', defaults: { format: :json } do
  	scope '/v1' do
      # restaurant controller
      get '/restaurants/:id/show' => 'restaurants#show'
      get '/restaurants/:city/index' => 'restaurants#index'
      post '/restaurants' => 'restaurants#create'
    end
  end
  namespace :users, defaults: { format: :json } do
    resources :registrations, only: :create
    post '/authenticate_user' => 'authentications#authenticate_user'
  end
end
