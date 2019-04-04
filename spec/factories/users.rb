FactoryBot.define do
  sequence :email do |n|
    "test#{n}@test.com"
  end

  factory :user do
    first_name { 'John' }
    last_name { 'Snow' }
    email { generate :email }
    password { 'asdfasdf' }
    password_confirmation { 'asdfasdf' }
    phone { '555555555' }
  end

  factory :non_authorized_user, class: 'User' do
    first_name { 'John' }
    last_name { 'Snow' }
    email { generate :email }
    password { 'asdfasdf' }
    password_confirmation { 'asdfasdf' }
    phone { '555555555' }
  end

  factory :admin_user, class: 'AdminUser' do
    first_name { 'Non' }
    last_name { 'Authorized' }
    email { generate :email }
    password { 'asdfasdf' }
    password_confirmation { 'asdfasdf' }
    phone { '555555555' }
  end
end
