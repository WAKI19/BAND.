Rails.application.routes.draw do
  root 'views#top'
  get 'signin' => 'users#signin'
  post 'users' => 'users#create'
  get 'login' => 'sessions#new'
  post 'login' => 'sessions#create'
  delete 'logout' => 'sessions#destroy'
  get 'performance' => 'performances#new'
  post 'performances' => 'performances#create'
  get ':id' => 'users#show'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
