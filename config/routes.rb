Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #ruta '/todos' que apunte al método todos#index
  get 'todos', to: 'todos#index'

  root 'todos#index'



end
