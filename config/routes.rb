ActionController::Routing::Routes.draw do |map|
  map.resources :attached_files, :except => [ :index, :new, :create ]
  map.resources :services, :has_many => :attached_files
  # map.resources :churches
  map.resource  :account, :controller => "users"
  map.resources :users
  map.resource  :user_session
  map.resources :seasons, :except => :show

  map.root :controller => "user_sessions", :action => "new"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
