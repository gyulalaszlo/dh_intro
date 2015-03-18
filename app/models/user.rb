class User < ActiveRecord::Base
  attr_accessible :name, :status

  has_many :permissions, as: :permittable
  has_one :role


  # Query all permissions of a user as in exercise 3.2
  def all_permissions
    permissions + role.permissions
  end
end
