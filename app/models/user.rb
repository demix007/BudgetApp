class User < ApplicationRecord
  has_many :entities, dependent: :destroy
  has_many :groups, dependent: :destroy
  validates :name, presence: true
  validates :name, presence: true, length: { in: 2..300 }
end
