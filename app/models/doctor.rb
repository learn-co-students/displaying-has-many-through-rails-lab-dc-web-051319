class Doctor < ApplicationRecord
  has_many :appointments
  has_many :patients, through: :appointments


  def patient_count
    self.patients.length
  end

  # def doctor_appts
  #   self.appointments.each do |appointment|
  #     appointment.appointment_datetime.strftime('%B %d, %Y at %H:%M')
  #   end
  # end
end
