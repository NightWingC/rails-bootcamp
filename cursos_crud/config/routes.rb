Rails.application.routes.draw do
  resources :videos
  get "cursos/", to: "cursos#index"
  get "cursos/new"
  get "cursos/:id", to: "cursos#show", as: "show_cursos"
  get "cursos/:id/edit", to: "cursos#edit", as: "edit_cursos"
  post "cursos", to: "cursos#create"
  patch "cursos/:id/", to: "cursos#update", as: "curso"
  delete "cursos/:id", to: "cursos#destroy", as: "delete_curso"


  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "posts#index"
end
