Rails.application.routes.draw do

root 'admins#home'


resources :admins

resources :courses




  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
