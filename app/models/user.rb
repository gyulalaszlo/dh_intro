class User < ActiveRecord::Base
  attr_accessible :name, :status

  has_many :permissions, as: :permittable
  has_one :role
end
