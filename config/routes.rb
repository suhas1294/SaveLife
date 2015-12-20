Rails.application.routes.draw do

  root 'welcome#index'

  # For API's
  namespace :api do
    namespace :v1 do
      get 'info/server' => 'info#server'
    end
  end

  #static pages
  get 'static/index' => 'static#index'
  get 'static/item-1' => 'static#item_1'
  get 'static/item-2' => 'static#item_2'
  get 'static/item-3' => 'static#item_3'
  get 'static/item-4' => 'static#item_4'
  get 'static/item-5' => 'static#item_5'

  #welcome pages
  get 'welcome/item-1' => 'welcome#item_1'
  get 'welcome/item-3' => 'welcome#item_3'
  get 'welcome/item-4' => 'welcome#item_4'
  get 'welcome/item-5' => 'welcome#item_5'

  # Registration Page
  get 'users/new' => 'web/registrations#new'
  post 'users' => 'web/registrations#create'
  get 'after_sign_in' => 'web/registrations#after_sign_in'
  get 'sign_in_form'  => 'web/sessions#new'
  post 'sign_in'  => 'web/sessions#create'
  delete 'sign_out'  => 'web/sessions#destroy'
  get 'contacts/new' => 'web/users#new'
  post 'contacts' => 'web/users#create'
  get  'search_donars' => 'web/users#search_donars'
  post 'send_email'  => 'web/users#send_email'

  #Search Donor
  get 'donor/new' => 'web/users#index'

  # APIs
  post 'api/v1/sign_up/' => 'api/v1/registrations#create'
end
