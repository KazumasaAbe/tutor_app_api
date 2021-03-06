Rails.application.routes.draw do
  devise_for :students
  devise_for :teachers

  namespace :api do
    namespace :v1 do
      resources :hello, only:[:index]
      resources :notices
      resources :messages, only:[:index, :show, :create]
      resources :rooms, only:[:show]
      resources :academic_abilities, only:[:index, :create, :update, :destroy]
      mount_devise_token_auth_for 'Student', at: 'student'
      mount_devise_token_auth_for 'Teacher', at: 'teacher'

      get 'teachers', to: "teachers#teacher_index"
      resources :teachers, only:[:update, :destroy, :show]
      resources :students, only:[:index, :update, :destroy]
      resources :inquiries, only:[:index, :create, :update]
      # get 'inquiries', to: "inquiry#index"
      # post 'inquiries', to: "inquiry#create"
      # patch 'inquiries', to: "inquiry#update"
    end
  end
end