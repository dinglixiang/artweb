class Notice < ActiveRecord::Base
  attr_accessible :content, :filenumber, :title

  default_scope order("created_at DESC")
end
