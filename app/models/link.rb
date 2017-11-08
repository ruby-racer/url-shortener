class Link < ApplicationRecord
  validates :original_url, presence: true, url: true
end
