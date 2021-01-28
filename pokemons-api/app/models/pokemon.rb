class Pokemon < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  validates :name, :location, presence: true
  validates :name, uniqueness: true
end
