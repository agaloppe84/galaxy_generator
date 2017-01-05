
class Planet < ActiveRecord::Base
  belongs_to :sun
  has_many :moons, dependent: :destroy
end
