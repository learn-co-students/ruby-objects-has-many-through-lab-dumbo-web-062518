require 'pry'

class Patient
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, appointment_date)
     appointment_date = Appointment.new(appointment_date, self, doctor)
  end

  def appointments
      Appointment.all.select do |appointment|
        appointment.patient == self
      end
  end

  def doctors
    self.appointments.map do |appointment|
      appointment.doctor
    end
  end
end
