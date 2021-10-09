class Teacher < ApplicationRecord
    has_one :language , dependent: :destroy
    has_many :students, dependent: :destroy

    validates :name, :email, :birthdate , presence: true
    validates :email, uniqueness: true
    validates_date :birthdate, before: lambda { Date.current }
end