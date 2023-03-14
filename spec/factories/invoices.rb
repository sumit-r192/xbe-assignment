# frozen_string_literal: true

# spec/factories.rb

FactoryBot.define do
  factory(:invoice) do
    gross_amount { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    base_amount { Faker::Number.decimal(l_digits: 4, r_digits: 2) }
    service_charge { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    sales_tax { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    tips { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    discounts { Faker::Number.decimal(l_digits: 2, r_digits: 2) }
    fee { Faker::Internet.password }
  end
end
