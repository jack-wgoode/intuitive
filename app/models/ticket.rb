class Ticket < ApplicationRecord
    belongs_to :tech
    belongs_to :end_user
end
