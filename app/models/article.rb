class Article < ApplicationRecord
  has_one :tag
  validates_presence_of :title, presence: true
  validates_presence_of :content, presence: true
end
