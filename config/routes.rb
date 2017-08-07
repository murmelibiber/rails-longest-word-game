Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


get '/game', to: 'games#start'
get '/', to: 'games#start'
get '/second_step', to: 'games#second_step'


end
