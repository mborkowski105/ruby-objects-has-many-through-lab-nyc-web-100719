class Doctor 
  @@all = [] 
   
  attr_reader :name 
   
  def initialize(name)
    @name = name 
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def new_appointment(date, patient)
    return Appointment.new()
  end
end