Rails.application.routes.draw do

root 'access#login'

get 'access/login' => 'access#login'
post 'access/login' => 'access#logging_in'


resources :users







  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
