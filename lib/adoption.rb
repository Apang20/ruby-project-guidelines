class Adoption < ActiveRecord::Base
    belongs_to :user 
    belongs_to :dog
end 