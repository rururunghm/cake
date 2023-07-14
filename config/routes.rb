Rails.application.routes.draw do
 
  namespace :public do
    get 'items/index'
    get 'items/show'
  end
  namespace :public do
    
    resources :cart_items,only: [:index,:update, :destroy, :create]
    resources :customers, only: [:edit, :update]
  end
  
  get "/cart_items" => "public/cart_items#index"
  get "/customers/information/edit" => "public/customers#edit"
  get "/customers/mypage" => "public/customers#show"
  get "/customers/complete" => "public/customers#complete"
  get "/about" => "public/homes#about"
  root to: "public/homes#top"
  
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }




  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
