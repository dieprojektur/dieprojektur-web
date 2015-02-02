Rails.application.routes.draw do

  devise_for :admins

  namespace :administration do
    resources :pages
  end
end
