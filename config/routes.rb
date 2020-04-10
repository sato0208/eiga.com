Rails.application.routes.draw do
	root to: 'movies#index'
	devise_for :users
	resources :movies, only:[:new, :create, :index, :show, :destroy] do
	resources :comments, only:[:new, :create, :show, :index]
	end
end
