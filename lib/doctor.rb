require 'pry'
class Doctor
attr_reader :name
@@all = []

def initialize(name)
  @name = name

  @@all << self

end

#Class Method
def self.all
  @@all
end

#Instance Methods
def new_appointment(patient, date)
  Appointment.new(patient, self, date)
end

def appointments
  Appointment.all.select do |appointments|
    appointments.doctor == self
  end
end

def patients
  appointments.map do |appointments|
    appointments.patient
  end
end

end
