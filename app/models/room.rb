class Room < ApplicationRecord
  belongs_to :user
  has_many :tracks, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :title, :description, :custom_message, presence: true
  validates :photo_url, presence: true
  has_attachment :photo
  after_create :generate_slug

  private

  def generate_slug
    self.slug = title.parameterize
    self.save
  end
end
