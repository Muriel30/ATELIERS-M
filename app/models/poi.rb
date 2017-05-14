class Poi < ApplicationRecord
  belongs_to :category
  belongs_to :user
  has_many   :reviews, dependent: :destroy
  has_attachment :photo

  validates :category, presence: true
  # validates :user, presence: true
  validates :photo, presence: true
end
