Rails.application.routes.draw do
  resources :tweets

  resources :photos
  # resources :fotos, as: :photos, controller: :photos, path_name:{ new: "nuevo", edit: "editar" }
  # resources :fotos, as: :photos, controller: :photos
  # resources :tweets, only: [ :show ]
  # resources :tweets, except: [ :edit, :update ]
  root to: "main#hello"

  get "hola", to: "main#hello"

  get "bienvenida", to: "main#hi", as: :saludo
  post "hi", to: "main#greetings"
end
