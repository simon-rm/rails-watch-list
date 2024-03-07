Rails.application.routes.draw do
  resources :movie_lists, only: %i[index show update create] do
    resources :bookmark, only: %i[create]
  end
end
