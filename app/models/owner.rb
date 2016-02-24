class Owner < ActiveRecord::Base
  has_many :custodies
  has_many :dogs, through: :custodies

  def owner_full
    "#{first_name} #{last_name}"
  end

end
