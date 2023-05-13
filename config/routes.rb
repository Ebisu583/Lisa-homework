Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get "homeworks", to: "homeworks#index"
  get "homeworks/new", to: "homeworks#new", as: :new_homework
  post "homeworks", to: "homeworks#create"
  get "homeworks/:id", to: "homeworks#show", as: :homework
  get "homeworks/:id/edit", to: "homeworks#edit", as: :edit_homework
  patch "homeworks/:id", to: "homeworks#update"
  delete "homeworks/:id", to: "homeworks#destroy"
  # Defines the root path route ("/")
  # root "articles#index"
end
