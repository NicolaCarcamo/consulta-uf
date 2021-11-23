class Valor < ApplicationRecord
    validates :uf, presence: true
end
