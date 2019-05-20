Rails.application.routes.draw do
  root 'pages#home'
  get "/pages/:page" => "pages#show"
end
