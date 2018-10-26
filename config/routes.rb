Rails.application.routes.draw do
  devise_for :users
  root 'profile#index'

  #creates the resources needed to upload a new avatar
  get 'avatar/edit', to: 'avatars#edit', as: 'edit_avatar'
  put 'avatar', to: 'avatars#update', as: 'avatar'
  patch 'avatar', to: 'avatars#update'
end
