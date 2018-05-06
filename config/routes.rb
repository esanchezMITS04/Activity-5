Rails.application.routes.draw do
  resources :cellphones
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    get 'cellphones/decrement_stock/:id' => 'cellphones#decrement_stock'
end
