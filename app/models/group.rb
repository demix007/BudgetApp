class Group < ApplicationRecord
  has_many :relations, dependent: :destroy
  belongs_to :user

  validates :icon, presence: true
  validates :name, presence: true, length: { in: 3..300 }

  def self_total(id)
    group = Group.find(id)
    relations = group.relations
    @total = 0
    relations.each do |relation|
      entity = Entity.find(relation.entity_id)
      @total += entity.amount
    end
    @total
  end
  
  def created_at
    attributes['created_at'].strftime('%d %b %Y')
  end
end
