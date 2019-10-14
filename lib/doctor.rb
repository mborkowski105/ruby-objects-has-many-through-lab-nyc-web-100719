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
    return Appointment.new(date, patient, self)
  end
  
  def appointments
    return Appointment.all.select do |app|
      app.doctor == self
    end
  end
end