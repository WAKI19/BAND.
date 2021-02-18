Rails.application.routes.draw do
  root 'views#top'
  get 'email-address-check' => 'users#email_address_check'
  get 'signin' => 'users#signin'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
