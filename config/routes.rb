Techinterview::Application.routes.draw do
  resources :questions
  resources :responses
  root to: 'questions#show'

  # Omniauth Routes
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

end
