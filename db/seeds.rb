# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
List.create :name => "Amigo invisible test"

for name in ["juarinu", "perico", "andres"]
  User.create :username => name, :email => name+"@test.com", :password => "123456", :password_confirmation => "123456"
end
  