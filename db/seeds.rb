# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Blood Group
BloodGroup.destroy_all
BloodGroup.connection.execute("truncate blood_groups RESTART IDENTITY")
BloodGroup.create(name:'A+')
BloodGroup.create(name:'A-')
BloodGroup.create(name:'B+')
BloodGroup.create(name:'B-')
BloodGroup.create(name:'AB+')
BloodGroup.create(name:'AB-')
BloodGroup.create(name:'O+')
BloodGroup.create(name:'O-')
BloodGroup.all.each do |p|
  puts "Blood Groups '#{p.name}'"
end

# Country
Country.destroy_all
Country.connection.execute("truncate countries RESTART IDENTITY")
Country.create(name:'India')
Country.all.each do |p|
  puts "Country '#{p.name}'"
end

# States
State.destroy_all
State.connection.execute("truncate states RESTART IDENTITY")
State.create(name:'Karnataka')
State.create(name:'Kerala')
State.create(name:'Thamilunaadu')
State.create(name:'Andhra Pradesh')
State.create(name:'Uttar Pradesh')
State.all.each do |p|
	puts "State '#{p.name}'"
end