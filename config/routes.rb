Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'users#index', as: 'home'
  post 'photos' => 'users#showPhotos'
  get 'photos' => 'users#showPhotos'
  post 'nextPhoto' => 'users#nextPhoto'
  post 'userEntry' => 'users#entry'
  get 'likes' => 'users#indexPhotos', as: 'like'
  post 'userLikePhotos' => 'users#likePhotos'
  get 'userLikesEntry' => 'users#likesEntry'
end
