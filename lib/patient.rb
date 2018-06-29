require 'pry'

class Patient
attr_reader :name
@@all = []

def initialize(name)
  @name = name
  @@all << self
end

#Class Methods
def self.all
  @@all
end

#Instance Methods
def new_appointment(doctor, date)
  Appointment.new(self, doctor, date)
end

def appointments
  Appointment.all.select do |appointments|
    appointments.patient == self
  end
end

def doctors
  appointments.map do |appointments|
    appointments.doctor
  end
end

end
