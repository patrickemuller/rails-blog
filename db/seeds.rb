# frozen_string_literal: true

Rails.logger('========> Creating Basic Admins....')

AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

Rails.logger("DONE! \n\n")

Rails.logger('========> Creating Basic Posts....')

100.times do |index|
  Post.create!(slug: "post-#{index}", title: "Post #{index}", body: 'Lorem ipsum dolor sit amet')
end

Rails.logger("DONE! \n\n")
