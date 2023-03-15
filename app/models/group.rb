class Group < ApplicationRecord
  has_many :relations, dependent: :destroy
  belongs_to :user
  validates :icon, presence: true
  validates :name, presence: true, length: { in: 2..300 }

  def created_at
    attributes['created_at'].strftime('%d %b %Y')
  end
end
