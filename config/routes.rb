Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # Read all tasks (index)
  get '/tasks', to: 'tasks#index'
  # Add a page where user can create a new task (form)
  get '/tasks/new', to: 'tasks#new'
  # Save the task instance created by the user in the form
  post '/tasks', to: 'tasks#create'
  # Read a specific tasks (show)
  get '/tasks/:id', to: 'tasks#show', as: :task
end
