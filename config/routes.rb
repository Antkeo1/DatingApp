# frozen_string_literal: true

Rails.application.routes.draw do
  resources :profiles
  # RESTful routes
  resources :examples, except: %i[new edit]

  # Custom routes
  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out' => 'users#signout'
  patch '/change-password' => 'users#changepw'

  post '/create-profile' => 'profiles#create'
  get '/show-profile/:id' => 'profiles#show'
  get '/show-all-profiles' => 'profiles#index'
  patch '/update-profile/:id' => 'profiles#update'
  delete '/delete-profile/:id' => 'profiles#destroy'

  post '/create-blog' => 'blogs#create'
  get '/show-blog/:id' => 'blogs#show'
  get '/show-all-blogs' => 'blogs#index'
  patch '/update-blog/:id' => 'blogs#update'
  delete '/delete-blog/:id' => 'blogs#destroy'
end
