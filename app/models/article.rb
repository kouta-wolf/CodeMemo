class Article < ApplicationRecord

  belongs_to :category
  
  # タイトル、内容が空なのを許容しない
  validates :title, presence: true
  validates :content, presence: true
end
