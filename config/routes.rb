Rails.application.routes.draw do

  root :to => 'homes#top'

  get  'new' => 'homes#new', as: 'new'

  post 'new' => 'homes#create'

  get 'new/:id' => 'homes#show', as: 'ditail'

  get 'new/:id/edit' => 'homes#edit', as: 'edit_ditail'

  patch 'new/:id' => 'homes#update', as: 'update_ditail'

  delete 'new/:id' => 'homes#destroy', as: 'destroy_ditail'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
