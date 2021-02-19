Rails.application.routes.draw do
  root 'views#top'
  get 'signin' => 'email_verification_codes#new'
  post 'email_verification_codes' => 'email_verification_codes#create'
  post 'verification' => 'email_verification_codes#verification'
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
