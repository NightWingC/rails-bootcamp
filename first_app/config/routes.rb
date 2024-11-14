Rails.application.routes.draw do
  get "skills/new"
  post "skills/create"
  get "saludos/new"
  post "saludos/create"
  get "home/index"
  root "home#index"
end
