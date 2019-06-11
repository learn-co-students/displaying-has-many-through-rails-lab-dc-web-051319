class Patient < ApplicationRecord
    has_many :appointments
    has_many :doctors, through: :appointments

    def count_appointment
        return self.appointments.count
    end
end
