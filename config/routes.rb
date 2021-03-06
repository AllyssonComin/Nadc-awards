Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  resources :plays do
    member do
      put "like" => "plays#upvote"
      put "unlike" => "plays#downvote"
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :players, only: %i[index show]
  get '/about_us', to: 'pages#about_us'
end
