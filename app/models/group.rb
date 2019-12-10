class Group < ApplicationRecord
    belongs_to :user

    has_many :contacts

    validates :name, presence: true
    validates :name, uniqueness: true
end
