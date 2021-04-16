class Patient < ApplicationRecord
    has_many :side_effects, dependent: :destroy 
    # validates_presence_of :name, :age, :gender, :vaccine
end
