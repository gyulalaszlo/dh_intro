class Role < ActiveRecord::Base
  attr_accessible :name
  has_many :permissions, as: :permittable
  belongs_to :user


  # Scope to find roles by their first character
  # as in exercise 3.4
  scope :begins_with, ->(first_letter) {
    User.where(arel_table[:name].matches("#{first_letter}%"))
  }
end
