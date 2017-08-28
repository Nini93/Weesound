class Room < ApplicationRecord
  belongs_to :user
  has_many :tracks, dependent: :destroy
  has_many :messages, dependent: :destroy
  validates :title, :description, :custom_message, presence: true
  validates :photo_url, presence: true
end
