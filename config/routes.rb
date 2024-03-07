Rails.application.routes.draw do
  resources :lists, only: %i[index show update create] do
    resources :bookmarks, only: %i[create]
  end
end
