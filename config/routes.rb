SampleApp::Application.routes.draw do

  get "sessions/new"

  match '/about', :to => 'pages#about'
  match '/contact', :to => 'pages#contact'
  match '/help', :to => 'pages#help'

  root :to => 'pages#home'

  resources :users
  resources :sessions, :only => [:new, :create, :destroy]

  match '/signup', :to => 'users#new'
  match '/signin', :to => 'sessions#new'
  match '/signout', :to => 'sessions#destroy'
end
