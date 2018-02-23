Rails.application.routes.draw do
  root to: 'home#index'
  resources :snippets
  namespace :api do
    namespace :v1 do
      resources :snippets
    end
  end
end
