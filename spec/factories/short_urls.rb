# == Schema Information
#
# Table name: short_urls
#
#  id           :bigint           not null, primary key
#  clicks       :integer          default(0)
#  original_url :string           not null
#  token        :string           not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
# Indexes
#
#  index_short_urls_on_original_url  (original_url) UNIQUE
#  index_short_urls_on_token         (token) UNIQUE
#
FactoryBot.define do
  factory :short_url do
    
  end
end
