class Player < ActiveRecord::Base
  belongs_to :team
  has_one :bio

#what does self mean
#search results show up on any page or just new page
#what if i want a msg to show up that no search results
#what if i want to hide search results after viewing them. 
#adding class to form, etc
def self.search(query)
  where("player_name like ?", "%#{query}%")
end




end