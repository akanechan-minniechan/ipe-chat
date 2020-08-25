Rails.application.routes.draw do
  root 'messages#index'

  get "messages/index", to: "messages#index"
  post "messages/create", to: "messages#create"
  get "messages/:id/edit", to: "messages#edit", as: "messages_edit"
  patch "messages/:id/update", to: "messages#update", as: "messages_update"
  get "messages/:id/delete", to: "messages#destroy"
end