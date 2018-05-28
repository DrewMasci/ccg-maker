Rails.application.routes.draw do
  devise_for :users
  get '/', to: 'calculate#index'
  get '/calculate/card/creation', to: 'calculate#cardCreation'
  post '/calculate/card/creation', to: 'calculate#newCard'
  get '/calculate/card/:card_id', to: 'calculate#viewCard', as: :card_id

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
