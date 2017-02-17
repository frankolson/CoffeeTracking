class Account < ApplicationRecord
  RESTRICTED_SUBDOMAINS = %w(www)

  # Validations
  validates :subdomain, presence: true,
                        uniqueness: { case_sensitive: false },
                        format: { with: /\A[\w\-]+\Z/i, message: 'contains invalid characters' },
                        exclusion: { in: RESTRICTED_SUBDOMAINS,  message: 'restricted' }
  before_validation :downcase_subdomain

  # Associations
  belongs_to :owner, class_name: "User"
  accepts_nested_attributes_for :owner

  private

  def downcase_subdomain
    self.subdomain = subdomain.try(:downcase)
  end
end
