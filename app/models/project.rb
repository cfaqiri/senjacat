class Project < ApplicationRecord
  before_create :generate_slug

  belongs_to :user

  private

  def generate_slug
    self.slug = name.parameterize
  end
end
