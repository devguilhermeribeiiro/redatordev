class Article < ApplicationRecord
  validates_presence_of :title, presence: true
  validates_presence_of :content, presence: true

  belongs_to :tag
end
