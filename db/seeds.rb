# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

user = User.create( name: "Miles Davis", status: "yepp, i'm dead" );
user.role = Role.create( name: "Band leader")

user.permissions.create( name: "Trumpet" )
user.permissions.create( name: "Saxophone" )


user.role.permissions.create( name: "Composition" )
user.role.permissions.create( name: "Arrangement" )
user.role.permissions.create( name: "Hire & fire" )
