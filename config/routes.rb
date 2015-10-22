Rails.application.routes.draw do
  
  root 'formatters#new'

  resources :formatters

end
