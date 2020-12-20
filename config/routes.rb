Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :posts, only: [:show, :edit, :new, :create]
  resources :bloggers, only: [:show, :edit, :new, :create, :update]
  resources :destinations, only: [:show, :edit, :new, :create, :update]

  patch '/posts/:id/add_likes', to: 'posts#add_likes', as: "add_likes"
end
