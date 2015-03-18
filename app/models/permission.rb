class Permission < ActiveRecord::Base
  attr_accessible :name

  belongs_to :permittable, polymorphic: true
end
