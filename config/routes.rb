Rails.application.routes.draw do
  resources :movie_lists, only: %i[index show new create] do
    resources :bookmark, only: %i[create]
    member do
      get "bookmark/new"
    end
  end
end
