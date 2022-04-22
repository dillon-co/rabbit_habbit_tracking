Rails.application.routes.draw do
  get 'reward', to: 'logs#reward', as: 'reward'

  resources :tasks do
    resources :logs
  end
  root to: 'tasks#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
