Rails.application.routes.draw do
  resources :patients
  resources :doctors
  resources :appointments
  resources :medical_histories, only: [:index]
  resources :departments, only: [:index]
  # display all doctors
  get "/doctors", to: "doctors#index"
  # display one doctor
  get "/doctors/:id", to: "doctors#show"
  post "/signup",to: "patients#create"
  get "/patients", to: "patients#index"
  get "/patients/:id", to: "patients#show"
  delete "/logout", to: "sessions#destroy"
  post "/login-patient", to: "jwt#create"
  post '/signup-doctor', to: 'doctors#create'
  post "/logindoctor", to: "doctor_jwt#create"

end
