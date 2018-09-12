Rails.application.routes.draw do

  root 'admins#home'


  get '/' => 'admins#home'
get '/login' => 'admins#new'
  post '/' => 'admins/#create'
 delete '/logout' => 'admins#destroy'

resources :courses do
  delete '/delete' => 'courses#destroy'
end
  resources :admins

  resources :students
  post '/results' => 'students#results'

resources :courses

# post '/results' => 'courses#results'

  resources :cohorts do
   resources :teachers, only: [:index, :new, :create, :show, :edit, :update]
 end

 resources :cohorts do
  resources :students
end


resources :courses do
 resources :cohorts

end

resources :courses do
  resources :students
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
