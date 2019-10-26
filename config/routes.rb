Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index'
  get 'likes' => 'photos#showLikes'
  post 'userEntry' => 'users#entry'
  resources :photos
end
