class Student < ActiveRecord::Base

  validates_presence_of :first_name, :last_name
  validates_uniqueness_of :first_name, :last_name

  def full_name
    self.first_name + " " + self.last_name
  end
end