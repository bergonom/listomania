class List < ActiveRecord::Base
  belongs_to :user
  has_many :list_items
  acts_as_votable 
end
