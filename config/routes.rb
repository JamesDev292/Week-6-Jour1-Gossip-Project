Rails.application.routes.draw do
  get "gossips/show"
  get "welcome/user"
  get "static_pages/home"
  get "static_pages/team"
  get "static_pages/contact"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  # Route de la page d'accueil
  root 'static_pages#home'

  # Vérification de la santé de l'application (utile pour les tests)
  get "up" => "rails/health#show", as: :rails_health_check


  # Routes pour les pages statiques
  get '/static_pages/team', to:'static_pages#team'
  get '/static_pages/contact', to:'static_pages#contact'

  # Route avec nom d'utilisateur dynamique
  get '/welcome/:user_name', to: 'welcome#user'

  get '/gossips/:id', to: 'gossips#show'

end
