Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :teams
      resources :events
      resources :players
    end
  end
end
