class Appointment 
  @@all = [] 
  
  attr_reader :patient, :doctor
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
  end
    
end