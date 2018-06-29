class Patient
attr_reader :name
@@all = []

def initialize(name)
  @name = name
  @@all << self

#Class Methods
def self.all
  @@all
end

#Instance Methods
def new_appointment(doctor, date)
  Appointment.new (date, self, doctor)
end

def appointments
  Appointments.all.select do |appointments|
    appointments.patient == self
  end
end

def doctors
  appointments.map do |appointments|
    appointments.doctors
  end
end
