Rails.application.routes.draw do
 
  devise_for :customers,skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  devise_for :admin, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }


  
 
  namespace :admin do
    root to: "homes#top"
    resources :order_details,only: [:update]
    resources :orders,only: [:update, :show]
    resources :customers,only: [:index, :update, :show, :create, :edit]
    resources :items,only: [:index, :new, :show, :update, :create, :edit]
  end
 
  scope module: :public do
    root to: "homes#top"
    get "/about" => "homes#about"
    resources :deliveries,only: [:index, :edit, :create, :update, :destroy]
    resources :orders,only: [:index, :show, :new, :create] do
      collection do
        post :confirm
        get :complete
      end 
    end  
    resources :items,only: [:index, :show]
    resources :cart_items,only: [:index, :update, :destroy, :create] do
      collection do
        delete :destroy_all   
      end
    end
    resources :customers, only: [:edit, :update, :show] do
      collection do
        patch :secession
        get :complete
      end 
    end
    
    
    get "/customers/information/edit" => "public/customers#edit"
    get "/customers/mypage" => "public/customers#show"
   
  
  end
  
  
  
  
 



  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
