Rails.application.routes.draw do
  root to: "flats#index"

  get "flats/:id", to: "flats#show", as: "flat"
  # flat_path(145)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
