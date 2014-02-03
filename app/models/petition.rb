class Petition < ActiveRecord::Base
  # acts_as_taggable_on :tag_list  
  belongs_to :user
end


