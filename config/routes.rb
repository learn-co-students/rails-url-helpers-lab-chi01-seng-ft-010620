Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/students", to: "students#index"

  get "/students/new", to: "students#new", as: "new_student"

  get "/students/edit", to: "students#edit", as: "edit_student"

  post "/students/", to: "students#create", as: "create_student"

  get '/students/:id', to: "students#show", as: "student"

  get '/students/:id/activate', to: "students#activate", as: "activate_student"
end
