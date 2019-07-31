Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :students, controllers: {
    sessions:      'students/sessions',
    passwords:     'students/passwords',
    registrations: 'students/registrations'
  }
  devise_for :teachers, controllers: {
    sessions:      'teachers/sessions',
    passwords:     'teachers/passwords',
    registrations: 'teachers/registrations'
  }
end
