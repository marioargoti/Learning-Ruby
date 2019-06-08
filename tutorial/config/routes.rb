Rails.application.routes.draw do
  get 'doctores/index'

  get 'medico/destroy'
  post 'doctores/edit'
  get 'doctores/edit'


  get 'doctores/add'

  post 'doctores/destroy'
  post 'doctores/create'
  post 'doctores/update'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
