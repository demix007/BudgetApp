class Group < ApplicationRecord
    has_many :relations, dependent: :destroy
    belongs_to :user
end
