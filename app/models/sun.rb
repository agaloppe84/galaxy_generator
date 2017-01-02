class Sun < ActiveRecord::Base
  belongs_to :galaxy
  has_many :planets, dependent: :destroy
end
