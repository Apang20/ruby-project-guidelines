class User < ActiveRecord::Base
    has_many :dogs
    has_many :adoptions
end 