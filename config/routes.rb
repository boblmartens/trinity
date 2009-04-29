ActionController::Routing::Routes.draw do |map|
  map.resources :services
  map.resources :churches
  map.resource  :account, :controller => "users"
  map.resources :users
  map.resource  :user_session

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
