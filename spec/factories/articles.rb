# frozen_string_literal: true

FactoryBot.define do
  factory :article do
    title { 'MyString' }
    body { 'MyText' }
    total_comments { 1 }
  end
end
