class SubdomainPresent
  def self.matches?(request)
    request.subdomain.present?
  end
end

class SubdomainBlank
  def self.matches?(request)
    request.subdomain.blank?
  end
end

Rails.application.routes.draw do

  constraints(SubdomainPresent) do
    devise_for :users
    resources :products
    resources :clients
    resources :orders
    resources :attendances
    resources :clients
    root 'products#index', as: :subdomain_root
    get 'choose', to: 'orders#choose_products'
  end

  constraints(SubdomainBlank) do
    resources :accounts, only: [:new, :create]
    root 'pages#home'
  end

end
