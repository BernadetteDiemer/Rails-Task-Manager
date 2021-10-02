Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # LIST ALL TASKS
  get 'tasks', to: 'tasks#index'

  # CREATE A NEW TASK
  get 'tasks/new', to: 'tasks#new'
  post 'tasks', to: 'tasks#create'

  # UPDATE A TASK
  get 'tasks/:id/edit', to: 'tasks#edit', as: :edit
  patch 'tasks/:id', to: 'tasks#update'

  # DELETE A TASK
  delete 'tasks/:id', to: 'tasks#destroy', as: :delete

  # READ ONE TASK
  get 'tasks/:id', to: 'tasks#show', as: :task
end
