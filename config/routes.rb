Rails.application.routes.draw do
  devise_for :users, default: { format: :json }, controllers: {
      sessions: 'sessions'
    }
  resources :activities
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
