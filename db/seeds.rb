@user = User.create(email: 'test@test.com',
                    password: 'asdfasdf',
                    password_confirmation: 'asdfasdf',
                    first_name: 'John',
                    last_name: 'Snow',
                    phone: '+5519971725588')

puts '1 user created'

AdminUser.create(email: 'admin@test.com',
                 password: 'asdfasdf',
                 password_confirmation: 'asdfasdf',
                 first_name: 'Admin',
                 last_name: 'Name',
                 phone: '+5519971725588')

puts '1 admin user created'

10.times do |post|
  Post.create!(date: Date.today, status: 0, rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: @user.id, overtime_request: 2.5)
  Post.create!(date: Date.today, status: 1, rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: @user.id, overtime_request: 4.5)
  Post.create!(date: Date.today, status: 2, rationale: "#{post} rationale content Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.", user_id: @user.id, overtime_request: 6.5)
end


AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create(user_id: @user.id, status: 0, start_date: (Date.today - 20.days))

puts '3 Audit Logs have been created'
