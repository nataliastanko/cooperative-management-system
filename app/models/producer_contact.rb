class ProducerContact < ActiveRecord::Base
  belongs_to :producer

  def fullname
    if self.firstname && self.lastname
      self.firstname << " " << self.lastname
    else
      self.email
    end
  end

end
