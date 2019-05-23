Rails.application.routes.draw do
  root 'pages#home'
  get '/pages/*page' => 'pages#show'
  get 'pages/howitworks'
  get 'pages/pricing'
  get 'pages/faq'
end
