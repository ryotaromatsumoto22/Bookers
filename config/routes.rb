Rails.application.routes.draw do

  root :to => 'homes#root',as: 'root'

  get  'books' => 'homes#books', as: 'books'

  post 'books' => 'homes#create', as: 'create'

  get 'books/:id' => 'homes#show', as: 'book'

  get 'books/:id/edit' => 'homes#edit', as: 'edit_book'

  patch 'books/:id' => 'homes#update', as: 'update_ditail'

  delete 'books/:id' => 'homes#destroy', as: 'destroy_ditail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
