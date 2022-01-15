Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers

  namespace :api do
    namespace :v1 do
      resources :hello, only:[:index]
      mount_devise_token_auth_for 'Student', at: 'student'
      mount_devise_token_auth_for 'Teacher', at: 'teacher'
      get 'teachers', to: "teachers#teacher_index"
      resources :teachers, only:[:update, :destroy]
    end
  end
end