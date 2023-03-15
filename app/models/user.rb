class User < ApplicationRecord
  has_many :entities, dependent: :destroy
  has_many :groups, dependent: :destroy
end
