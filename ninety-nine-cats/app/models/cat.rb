# == Schema Information
#
# Table name: cats
#
#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)        not null
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
class Cat < ApplicationRecord
    CAT_COLORS = ['white', 'black', 'brown', 'orange', 'blue']
    validates :name, presence: true
    validates :color, presence: true, inclusion: {in: CAT_COLORS}
    validates :sex, presence: true, inclusion: {in: ['M','F']}
    validate :birth_date_cannot_be_future

    def birth_date_cannot_be_future
        if birth_date && birth_date > Date.today
            errors.add(:birth_date, "Can't be in future!")
        end
    end

    def age
        now = Date.today
        age = now.year - birth_date.year

        age -= 1 if now < birth_date + age.years
        age 
    end
end
