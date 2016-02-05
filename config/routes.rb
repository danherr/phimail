Rails.application.routes.draw do

  namespace :api, defaults: {format: :json} do

    resource :session, only: [:create, :destroy] do
      post 'find_user'
    end
    resource :user, only: [:show, :update, :create, :destroy]

    resources :messages, only: [:show]

    resources :conversations, only: [:index, :show, :create, :update, :destroy] do

      collection do
        patch 'batch_update'
        delete 'batch_delete'
      end

      resources :messages, only: [:create] do
        member do
          patch 'update_draft'
        end
      end

    end


  end

  root to: 'static_pages#root'
end
