Rails.application.routes.draw do
  resources :letters
    collection do
      post :confirm
    end
  end
end
