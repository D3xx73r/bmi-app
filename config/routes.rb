Rails.application.routes.draw do
  root to: 'bmi_calculations#index'
  devise_for :users

  resources :bmi_calculations, only: [:index, :create, :new]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
