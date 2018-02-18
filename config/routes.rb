Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#show'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get 'timelines/fetch', to: 'timelines#fetch'
    end
  end
end
