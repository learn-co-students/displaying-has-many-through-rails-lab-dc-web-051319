class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def time
        return self.appointment_datetime.strftime("%B %e, %Y at %k:%M")
    end
end
