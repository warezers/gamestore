Rails.application.routes.draw do
  get 'about/index'

  get 'creators/index'

  get 'creators/new'

  get 'creators/create'

  get 'creators/edit'

  get 'creators/update'

  get 'creators/destroy'

  get 'creators/show'

  get 'categories/index'

  get 'categories/new'

  get 'categories/create'

  get 'categories/edit'

  get 'categories/update'

  get 'categories/destroy'

  get 'categories/show'

  get 'games/index'

  get 'games/new'

  get 'games/create'

  get 'games/edit'

  get 'games/update'

  get 'games/destroy'

  get 'games/show'
  
  get 'about' => 'about#index'

  root 'games#index'

  resources :games
  resources :categories



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
