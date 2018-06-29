class Patient
	attr_reader :name

	@@all = []

	def initialize(name)
		@name = name
		@@all << self
	end

	def self.all
		@@all
	end

	def new_appointment(doc, date)
		appointment = Appointment.new(date, self, doc)
	end

	def appointments
		Appointment.all{|appointment| appointment.patient == self}
	end

	def doctors
		appointments.map{|appointment| appointment.doctor}
	end
end