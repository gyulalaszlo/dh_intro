class Role < ActiveRecord::Base
  attr_accessible :name
  has_many :permissions, as: :permittable
  belongs_to :user
end
