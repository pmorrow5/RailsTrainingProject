Rails.application.routes.draw do
  resources :decks do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
    resources :cards do
      get 'present'
    end
   end
  root "decks#index"

end
