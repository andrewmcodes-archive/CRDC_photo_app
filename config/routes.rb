# == Route Map
#
#                   Prefix Verb   URI Pattern                       Controller#Action
#                   images GET    /images(.:format)                 images#index
#                          POST   /images(.:format)                 images#create
#                new_image GET    /images/new(.:format)             images#new
#               edit_image GET    /images/:id/edit(.:format)        images#edit
#                    image GET    /images/:id(.:format)             images#show
#                          PATCH  /images/:id(.:format)             images#update
#                          PUT    /images/:id(.:format)             images#update
#                          DELETE /images/:id(.:format)             images#destroy
#         new_user_session GET    /users/sign_in(.:format)          devise/sessions#new
#             user_session POST   /users/sign_in(.:format)          devise/sessions#create
#     destroy_user_session DELETE /users/sign_out(.:format)         devise/sessions#destroy
#        new_user_password GET    /users/password/new(.:format)     devise/passwords#new
#       edit_user_password GET    /users/password/edit(.:format)    devise/passwords#edit
#            user_password PATCH  /users/password(.:format)         devise/passwords#update
#                          PUT    /users/password(.:format)         devise/passwords#update
#                          POST   /users/password(.:format)         devise/passwords#create
# cancel_user_registration GET    /users/cancel(.:format)           registrations#cancel
#    new_user_registration GET    /users/sign_up(.:format)          registrations#new
#   edit_user_registration GET    /users/edit(.:format)             registrations#edit
#        user_registration PATCH  /users(.:format)                  registrations#update
#                          PUT    /users(.:format)                  registrations#update
#                          DELETE /users(.:format)                  registrations#destroy
#                          POST   /users(.:format)                  registrations#create
#    new_user_confirmation GET    /users/confirmation/new(.:format) devise/confirmations#new
#        user_confirmation GET    /users/confirmation(.:format)     devise/confirmations#show
#                          POST   /users/confirmation(.:format)     devise/confirmations#create
#                     root GET    /                                 welcome#index
# 

Rails.application.routes.draw do
  resources :images
  devise_for :users, controllers: { registrations: 'registrations' }
  root 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
