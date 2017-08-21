class Room < ApplicationRecord
  belongs_to :user
  has_many :tracks, dependent: :destroy
  validates :title, :description, :custom_message, presence: true
  has_attachment :photo
end
