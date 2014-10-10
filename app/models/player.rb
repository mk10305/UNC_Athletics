class Player < ActiveRecord::Base
  belongs_to :team
  has_one :bio

#what does self mean
#search results show up on any page or just new page
#what if i want a msg to show up that no search results
#what if i want to hide search results after viewing them. 
#adding class to form, etc



=begin
def self.search(search)
  if search
   where("player_name LIKE ?", "%#{search}%")
  else
  all
  end
end
=end




end