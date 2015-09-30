class Account < ActiveRecord::Base
	RESTRICTED_SUBDOMAINS = %w(wwww)

	belongs_to :owner, class_name: 'User'

	validates :owner, presence: true

	validates :subdomain, presence: true, 
		uniqueness: { case_sensitive: false },
		format: { with: /\A[\w\-]+\Z/i, message: 'subdominio com caracteres invalidos' },
		exclusion: { in: RESTRICTED_SUBDOMAINS, message: 'subdominio restrito' }

	before_validation :downcase_subdomain


	accepts_nested_attributes_for :owner

private 
	def downcase_subdomain
		self.subdomain = subdomain.try(:downcase)
	end
	
end
