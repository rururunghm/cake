Rails.application.routes.draw do
 
  namespace :public do
    get 'cart_items/index'
    resources :customers, only: [:show, :edit, :update]
  end
  
  get "/customers/mypage" => "public/customers#show"
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
