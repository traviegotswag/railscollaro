class Measurement < ApplicationRecord    
    belongs_to :user
    # validate :banana, on: :create 
end