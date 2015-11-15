class AnimalInfor < ActiveRecord::Base
    
    validates :animal_id, uniqueness: true
end
