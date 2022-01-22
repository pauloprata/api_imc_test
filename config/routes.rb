Rails.application.routes.draw do
  post 'calculator/imc' ,to: 'calculator#imc'
  #post '/login', to: 'auth#login'

post '/auth',to: 'auth#persist'
  
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
