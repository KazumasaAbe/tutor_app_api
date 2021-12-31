Rails.application.routes.draw do
  devise_for :teachers
  devise_for :students


  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'Student', at: 'auth'
      mount_devise_token_auth_for 'Teacher', at: 'auth'
    end
    namespace :v1 do
      get 'teachers', to: "teachers#teacher_index"
    end
  end
end