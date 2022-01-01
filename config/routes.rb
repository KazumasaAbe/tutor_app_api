Rails.application.routes.draw do
  devise_for :students
  # devise_for :teachers


  namespace :api do
    namespace :v1 do
      mount_devise_token_auth_for 'Student', at: 'auth'
      # mount_devise_token_auth_for 'Teacher', at: 'teacher'
      resources :hello, only:[:index]
    end
  end
end