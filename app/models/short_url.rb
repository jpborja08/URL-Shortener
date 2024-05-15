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
class ShortUrl < ApplicationRecord
  validates :original_url, :token, presence: true
  validates :original_url, format: URI::DEFAULT_PARSER.make_regexp(%w[http https])
  validates :token, :original_url, uniqueness: true
  validates :clicks, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates_length_of :token, within: 3..6, on: :create, message: 'too long'

  before_validation :generate_token

  def generate_token
    return if token.present?

    self.token = loop do
      random_token = SecureRandom.urlsafe_base64(5)[0,6]
      break random_token unless ShortUrl.exists?(token: random_token)
    end
  end

  def short_url
    Rails.application.routes.url_helpers.short_url(token: token)
  end
end
