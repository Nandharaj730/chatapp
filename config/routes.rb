Rails.application.routes.draw do
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'session#index'
  post 'new' => 'session#new'
  post 'create' => 'session#create' 
  get 'chatroom' => 'chatroom#index'
  delete 'logout' => 'session#destroy'
  post 'chatroom' => 'chatroom#create'
  
  get 'rooms' => 'rooms#index'
  get 'rooms/:room_id' => 'rooms#index'
  post 'messages' => 'messages#create'
  post 'rooms/creategroup' => 'rooms#create'
  post 'creategroup' => 'rooms#create'
  post 'addgroup' => 'rooms#add'

  # mount ActionCable.server, at: '/cable'
end
