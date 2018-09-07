Rails.application.routes.draw do

  root 'admins#new'


  resources :admins
  get "/home" => 'admins#home'
get '/' => 'admins#new'
  post '/' => 'admins/#create'



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
