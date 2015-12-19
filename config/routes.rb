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
  get 'welcome/item-2' => 'welcome#item_2'
  get 'welcome/item-3' => 'welcome#item_3'
  get 'welcome/item-4' => 'welcome#item_4'
end
