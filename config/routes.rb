Spree::Core::Engine.routes.draw do
  # Add your extension routes here

  resources :line_item

  get '/items/:line_item_id/files', to: 'files#new', as: :new_line_item_file
  post '/items/:line_item_id/files', to: 'files#create', as: :create_line_item_file
  get '/items/:line_item_id/files/:id', to: 'files#edit', as: :edit_line_item_file


  patch '/items/:line_item_id/files/:id', to: 'files#update'
  put '/items/:line_item_id/files/:id', to: 'files#update'
  delete '/items/:line_item_id/files/:id', to: 'files#destroy'

end
