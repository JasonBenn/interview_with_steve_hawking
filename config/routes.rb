Techinterview::Application.routes.draw do
  resources :questions
  root to: 'questions#show'

  # Omniauth Routes
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

end
