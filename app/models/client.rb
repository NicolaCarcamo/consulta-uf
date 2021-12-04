class Client < ApplicationRecord
    validates :user, presence: true
end
