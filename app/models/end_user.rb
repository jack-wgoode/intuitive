class EndUser < ApplicationRecord
    has_many :tickets
    has_many :techs, through: :tickets
end
