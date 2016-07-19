Rails.application.routes.draw do
  resources :courses
  resources :students
  resources :teachers
  resources :schools
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'schools#index'
end
