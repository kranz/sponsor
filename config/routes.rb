Sponsor::Application.routes.draw do
  resources :azioni
  resources :stati_contributo
  resources :tipi_evento
  resources :eventi
  resources :documenti
  resources :contributi
  resources :richiedenti do
    resources :contributi
    resources :posizioni
  end

  resources :posizioni
  resources :filiali
  resources :aree_territoriali
  resources :banche
  resources :regioni
  resources :province
  resources :tipi_contributo
  resources :tipi_documento
  resources :valute

  authenticated :user do
    root :to => 'home#index'
  end
  root :to => "home#index"
  devise_for :users
  resources :users
end