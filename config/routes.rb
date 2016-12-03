Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  # V1 Nov. 2016
  namespace :api do
    namespace :v1 do

      #connection test
      get 'hello', to: 'static#hello'

      #Reqest
      get   'requests/:id',     to: 'request#show'
      get   'requests',         to: 'request#index'
      post  'requests/create',  to: 'request#create'
    end
  end



end
