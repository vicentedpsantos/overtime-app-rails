FactoryBot.define do
  factory :audit_log do
    user { nil }
    status { 1 }
    start_date { "2019-04-04" }
    end_date { "2019-04-04" }
  end
end
