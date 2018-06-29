class Doctor
attr_reader :name
@@all = []

def initialize(name)
  @name = name

  @@all << self

#Class Method
def self.all
  @@all
end

#Instance Methods
def new_appointment(date, patient)
  Appointment.new(date, patient, self)
end

def appointments
  Appointments.all.select do |appointments|
    appointments.doctor == self
end

def patients
  appointments.map do |appointments|
    appointments.patients
  end
end

end
