class User < ActiveRecord::Base
  attr_accessible :name, :status

  has_many :permissions, as: :permittable
  has_one :role


  # only allow users with a valid name
  validates_presence_of :name
  validates_length_of :name, minimum: 2

  # Query all permissions of a user as in exercise 3.2
  def all_permissions
    return permissions unless role
    permissions + role.permissions
  end
end
