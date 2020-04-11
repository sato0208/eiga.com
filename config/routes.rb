Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
	root to: 'movies#index'
	devise_for :users
	resources :movies, only:[:new, :create, :index, :show, :destroy] do
	resources :comments, only:[:new, :create, :show, :index]
	end
end
