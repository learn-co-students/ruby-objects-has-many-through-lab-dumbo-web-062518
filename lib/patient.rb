require 'pry'

class Patient
  attr_accessor :name

  @@all = Array.new

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
    # binding.pry
  end

  def appointments
    Appointment.all.select { |appointment| appointment.patient = self }
  end

  def doctors
    appointments.map { |appointment| appointment.doctor }
  end

  def self.all
    @@all
  end
end
