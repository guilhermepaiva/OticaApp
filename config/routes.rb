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


  resources :attendances
  resources :clients
  constraints(SubdomainPresent) do
    devise_for :users
    resources :products
    root 'products#index', as: :subdomain_root
  end

  constraints(SubdomainBlank) do
    resources :accounts, only: [:new, :create]
    root 'pages#home'
  end

end
