Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :plants do
    member do
      put "like", to: "plants#upvote"
    end
  end

  root "plants#index" #defines the root of the website
end
