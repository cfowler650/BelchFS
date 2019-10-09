Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
    scope '/api' do
        resources :users
        resources :restaurants do
            resources :menus, only: [:show, :create, :destroy]
        end


    end
end
