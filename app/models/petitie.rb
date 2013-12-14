class Petitie < ActiveRecord::Base
  acts_as_taggable
  acts_as_taggable_on :titlu, :continut
  belongs_to :user
end


