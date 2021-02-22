Rails.application.routes.draw do
  root 'views#top'
  get 'signin' => 'users#signin'
  post 'users' => 'users#create'
  get 'home' => ''
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
