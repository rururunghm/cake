Rails.application.routes.draw do
 
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  get 'admin/items/:id/edit' => 'admin/items#edit'
  root to: "public/homes#top"
  
 
  namespace :admin do
    get 'homes/top'
    resources :order_details,only: [:update]
    resources :orders,only: [:update, :show]
    resources :customers,only: [:index, :update, :show, :create, :edit]
    resources :items,only: [:index, :new, :show, :update, :create, :edit]
  end
 
  scope module: :public do
    resources :deliveries,only: [:index, :edit, :create, :update, :destroy]
    resources :orders,only: [:index, :show, :new, :create] do
      collection do
        post :confirm
        get :complete
      end 
    end  
    resources :items,only: [:index, :show]
    resources :cart_items,only: [:index, :update, :destroy, :create]
    resources :customers, only: [:edit, :update, :show]
    
    get "/items" => "public/items#index"
    get "/cart_items" => "public/cart_items#index"
    get "/customers/information/edit" => "public/customers#edit"
    get "/customers/mypage" => "public/customers#show"
    get "/customers/complete" => "public/customers#complete"
    get "/about" => "public/homes#about"
  
  end
  
  
  
  
 



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
