# ruby encoding: utf-8
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

roles = [:admin, :user, :guardian, :storekeeper]

roles.each do |name|
  role = Role.new
  role.name = name
  role.save
end

user = User.new
user.email = 'test@test.com'
user.password = 'password1'
user.add_role :admin
user.is_active = true
user.save
