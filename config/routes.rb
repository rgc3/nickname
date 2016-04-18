Rails.application.routes.draw do
  resources :nicknames

  root 'nicknames#new'
end
