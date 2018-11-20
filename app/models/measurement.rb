class Measurement < ApplicationRecord    
    belongs_to :user
    
    # validate :banana, on: :create 

    # def banana
    #     # user may not be a variable 
    #     if user.measurements.length > 2 
    #         errors.add(:apple, "cannot have more than 2 measurements")
    # end 

end