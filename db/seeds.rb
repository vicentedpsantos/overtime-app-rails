@user = User.create(email: 'test@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'John', last_name: 'Snow')

puts '1 user created'

AdminUser.create(email: 'admin@test.com', password: 'asdfasdf', password_confirmation: 'asdfasdf', first_name: 'Admin', last_name: 'Name')

puts '1 admin user created'

10.times do |post|
  Post.create!(date: Date.today, status: 0, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 2.5)
  Post.create!(date: Date.today, status: 1, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 4.5)
  Post.create!(date: Date.today, status: 2, rationale: "#{post} rationale content", user_id: @user.id, overtime_request: 6.5)
end

puts '100 Posts have been created'
