Rails.application.routes.draw do
  resources :students, only: [:index, :show, :update]
  get '/students/activate_student/:id', to: 'students#activate_student', as: 'activate_student'
end
