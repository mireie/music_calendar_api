Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
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
      resources :shows do
        collection do
          get "upcoming"
          get "past"
          get "next_week"
          get "all_ages"
        end
      end
    end
  end
end
