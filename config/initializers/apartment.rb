require 'apartment/elevators/subdomain'

Apartment.configure do |config|
	config.excluded_models = ['Account']

	# Rails.application.config.middleware.use 'Apartment::Elevators::Subdomain'

	# Apartment::Elevators::Subdomain.excluded_subdomains = ['www']
end
