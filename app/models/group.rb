class Group < ApplicationRecord
    has_many :relations, dependent: :destroy
    belongs_to :user

    def created_at
      attributes['created_at'].strftime('%d %b %Y')
    end
end
