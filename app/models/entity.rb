class Entity < ApplicationRecord
  belongs_to :user
  has_many :relations, dependent: :destroy

  def created_at
    attributes['created_at'].strftime('%d %b %Y')
  end
end
