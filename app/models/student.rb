class Student < ActiveRecord::Base
  def to_s
    self.first_name + " " + self.last_name
  end

  def reverse
    self.to_s.reverse
  end
end
