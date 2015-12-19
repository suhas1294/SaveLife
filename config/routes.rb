Rails.application.routes.draw do
  root 'welcome#index'
  get 'home_page'      => 'welcome#index'
  # For API's
  namespace :api do
    namespace :v1 do
      get 'info/server' => 'info#server'
    end
  end
end
