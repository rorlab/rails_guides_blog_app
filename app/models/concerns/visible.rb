module Visible
  extend ActiveSupport::Concern

  VALID_STATUSES = ['public', 'private', 'archived']

  included do
    validates :status, inclusion: { in: %w[public private archived] }
  end

  def archived?
    status == 'archived'
  end
end
