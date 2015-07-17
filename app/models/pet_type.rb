# == Schema Information
#
# Table name: pet_types
#
#  id          :integer          not null, primary key
#  description :string(255)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class PetType < ActiveRecord::Base
    
    def to_label
      "#{description}"
    end
end
