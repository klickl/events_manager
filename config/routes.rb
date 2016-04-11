Rails.application.routes.draw do
  resources :events

  get 'static_pages/index'

  root 'static_pages#index'

end
