class Section < ActiveRecord::Base
 def self.all
 	%w(Breakfast Lunch Dinner Drink)
 end
end
