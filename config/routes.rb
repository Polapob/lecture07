Rails.application.routes.draw do
  resources :students
  resources :scores
  resources :studens
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/students/:id/edit_score', to: 'students#edit_score'
end
