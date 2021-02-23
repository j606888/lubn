Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace :api do
    namespace :v1 do
      resources :factories, only: [:index, :update] do
        get 'devices'
      end
    end
  end

  root 'home#index'
end
