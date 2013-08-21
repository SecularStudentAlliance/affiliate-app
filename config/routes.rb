AffiliateApp::Application.routes.draw do

  root :to => 'dashboard#show'

  resources :affiliates

end
