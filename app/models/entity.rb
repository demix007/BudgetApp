class Entity < ApplicationRecord
    belongs_to :user
    has_many :relations, dependent: :destroy
end
