class Company < ActiveRecord::Base
 has_many :freebies
 has_many :devs, through: :freebies

 
 def give_freebie(dev, item_name, value)
    Freebies.create(item_name: item_name, value: value, dev: dev, company: self)

 end

 def self.oldest_company 
    Company.find_by(founding_year: self.minimum("founding_year"))
 end

 
end
