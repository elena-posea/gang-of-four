class UserPetitie < ActiveRecord::Base
   belongs_to :user
   belongs_to :petitie
end
