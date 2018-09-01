Rails.application.routes.draw do



root 'admins#home'


resources :admins

resources :cohorts do

resources :teachers, only: [:index, :new, :create, :show, :edit]
end

resources :courses do

resources :cohorts


end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
