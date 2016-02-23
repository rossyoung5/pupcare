class Vet < ActiveRecord::Base
  belongs_to :clinic
  has_many :dogs

  def vet_clinic
    "#{doctor}, #{clinic.name}"
  end

end
