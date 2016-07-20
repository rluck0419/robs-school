Rails.application.routes.draw do
  get 'sessions/sign_in'
  delete 'sessions/sign_out'
  post 'sessions/authenticate'

  resources :users
  resources :courses
  resources :students
  resources :teachers
  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'schools#index'
end
