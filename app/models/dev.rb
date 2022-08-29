class Dev < ActiveRecord::Base
 has_many :freebies

 def freebies
    self.Freebie.all
 end 
  def companies
    self.Company.all
  end 

  def received_one?(item_name)
    self.freebies.each do |freebies|
        return freebies.item_name == item_name
    end
    
  end

  def give_away(dev, freebie)
    def give_away(freebie, dev)
      freebie.update(dev: dev) unless freebie.dev != self
    end
  end
end
