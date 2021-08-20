Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :venues do
    resources :shows do
      collection do
        get "upcoming"
        get "past"
        get "next_week"
        get "all_ages"
      end
    end
  end
  resources :shows
end
