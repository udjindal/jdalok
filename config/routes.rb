Rails.application.routes.draw do
  scope '/api', defaults: { format: :json } do
  	scope '/v1' do
      # restaurant controller
      get '/restaurants/:id/show' => 'restaurants#show'
      get '/restaurants/:city/index' => 'restaurants#index'
      post '/restaurants' => 'restaurants#create'
    end
  end
end
