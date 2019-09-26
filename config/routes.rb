Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :thread_admins

  resources :retreats do
    resources :enrollments, only: [:new, :create]
  end

  resources :enrollments, only: [:index]

end
