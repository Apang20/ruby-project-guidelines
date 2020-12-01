class Dog < ActiveRecord::Base
    belongs_to :shelter
    has_many :adoptions
    has_many :users, through: :adoptions
end 