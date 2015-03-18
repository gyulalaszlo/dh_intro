class Role < ActiveRecord::Base
  attr_accessible :name
  has_many :permissions, as: :permittable
  has_many :users


  # Scope to find roles by their first character
  # as in exercise 3.4
  scope :begins_with, ->(first_letter) {
    User.where(arel_table[:name].matches("#{first_letter}%"))
  }


  # Easy way to display the name in select boxes
  def to_s
    "##{id} -- #{name}"
  end
end
