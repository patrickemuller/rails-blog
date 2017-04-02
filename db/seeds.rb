# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
print '========> Creating Basic Admins....'

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

print "DONE! \n\n"

print '========> Creating Basic Posts....'

100.times do |index|
  Post.create!(slug: "post-#{index}", title: "Post #{index}", body: "Lorem ipsum dolor sit amet")
end

print "DONE! \n\n"
