FactoryBot.define do
  factory :post do
    date { Date.today }
    rationale { 'Any rationale' }
  end

  factory :second_post, class: 'Post' do
    date { Date.yesterday }
    rationale { 'Another dumb rationale' }
  end
end
