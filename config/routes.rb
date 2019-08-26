Rails.application.routes.draw do

  #user=====================>
  post 'user/:id/edit_user' => 'user#edit_user'
  get 'user/:id/edit' => 'user#edit'
  post 'user/logout' => 'user#logout'
  post 'user/login_check' => 'user#login_check'
  get 'user/login' => 'user#login'

  #posts=====================>
  get 'posts/index' => 'posts#index'
  get 'posts/new' => 'posts#new'
  post 'posts/create' => 'posts#create'

  #home=====================>
  get '/' => "home#top"
  get 'about' => "home#about"
  root "home#top"
end
