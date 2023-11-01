Rails.application.routes.draw do
  resources 'countries' do
    collection do
      get :fetch_country_states
      get :fetch_names
    end
  end
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
