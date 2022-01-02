Rails.application.routes.draw do
  devise_for :students

  namespace :api do
    namespace :v1 do
      resources :hello, only:[:index]
      mount_devise_token_auth_for 'Student', at: 'student'
    end
  end
end