ActionController::Routing::Routes.draw do |map|
  map.resources :services, :has_many => [ :attached_files ]
  # map.resources :churches
  map.resource  :account, :controller => "users"
  map.resources :users
  map.resource  :user_session, :only => [ :new, :destroy ]
  map.resources :seasons, :except => :show
  map.resources :attached_files, :only => :index

  map.root :controller => "user_sessions", :action => "new"

  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
