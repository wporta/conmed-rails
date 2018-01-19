Rails.application.routes.draw do
  devise_for :users, skip: :registrations

  resources :clinic
  resources :pacients
  resources :appointments
  resources :medical_consultations
  resources :medical_consultation_payments

  root 'dashboard#main'
end
