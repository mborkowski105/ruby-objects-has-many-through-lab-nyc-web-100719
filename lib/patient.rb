class Patient 
  @@all = [] 
  
  attr_reader :name 
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def new_appointment(date, doctor)
    return Appointment.new(date, self, doctor)
  end
  
  def appointments
    return Appointment.all.select do |app|
      app.patient == self
    end
  end
  
  def doctors 
    my_appointments = appointments
    
    my_appointments.map do |app|
      app.doctor
    end
  end
end