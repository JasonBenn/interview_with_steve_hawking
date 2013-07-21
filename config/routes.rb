Techinterview::Application.routes.draw do

  resources :questions

  root to: 'questions#show'

end
