class Appointment
  attr_accessor :patient, :doctor, :date

  @@all = Array.new

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def patient
    @patient
  end

  def doctor
    @doctor
  end

  def self.all
    @@all
  end
end
