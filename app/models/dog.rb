class Dog < ActiveRecord::Base
  belongs_to :breed
  belongs_to :vet
  has_many :custodies
  has_many :owners, through: :custodies

  def age
    now = Time.now.utc.to_date
    now.year - dob.year - ((now.month > dob.month || (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
  end

end
