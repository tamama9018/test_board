Rails.application.routes.draw do

  #user=====================>
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
end
