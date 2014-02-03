class Petition < ActiveRecord::Base
  # attr_accessible :titlu, :continut, :tag_list
  acts_as_taggable_on :tag_list  
  belongs_to :user
end


