Rails.application.routes.draw do

  root 'events#index'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # get ':controller(/:action(/:id))'

  resources :events do
      member do
        get :delete
      end
  end

  resources :users do
      member do
        get :delete
      end
  end

  resources :roles do
      member do
        get :delete
      end
  end

  resources :categories do
      member do
        get :delete
      end
  end

  resources :hosts do
      member do
        get :delete
      end
  end

  resources :speakers do
      member do
        get :delete
      end
  end

  resources :speaker_roles do
      member do
        get :delete
      end
  end


  resources :sessions do
      member do
        get :delete
      end
  end

end
