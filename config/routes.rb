Techinterview::Application.routes.draw do
  resources :questions do
    resources :responses
  end
  root to: 'admin_pages#home'

  match '/about' => 'admin_pages#about'

  # Omniauth Routes
  match "/auth/:provider/callback" => "sessions#create"
  match "/signout" => "sessions#destroy", :as => :signout

end
