class Entity < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :relations, dependent: :destroy
  validates :amount, numericality: { only_float: true, greater_than: 0 }
  validates :name, presence: true, length: { in: 3..300 }

  def created_at
    attributes['created_at'].strftime('%d %b %Y')
  end
end
