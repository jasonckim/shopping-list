ShoppingApp::Application.routes.draw do

root 'shops#index'

resources :shops
end

#  Prefix Verb   URI Pattern               Controller#Action
#      root GET    /                         shops#index
#     shops GET    /shops(.:format)          shops#index
#           POST   /shops(.:format)          shops#create
#  new_shop GET    /shops/new(.:format)      shops#new
# edit_shop GET    /shops/:id/edit(.:format) shops#edit
#      shop GET    /shops/:id(.:format)      shops#show
#           PATCH  /shops/:id(.:format)      shops#update
#           PUT    /shops/:id(.:format)      shops#update
#           DELETE /shops/:id(.:format)      shops#destroy