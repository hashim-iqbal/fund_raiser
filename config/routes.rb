Rails.application.routes.draw do

  namespace :api, defaults: { format: 'json' } do
    namespace :v1 do
      mount_devise_token_auth_for 'User', at: 'auth', controllers: {
        registrations: 'users/registrations'
      }

      resources :schools, only: :index
      resources :donations, only: :create do
        collection do
          post :invite
        end
      end
    end
  end
end
