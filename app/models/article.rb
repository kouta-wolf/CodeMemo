class Article < ApplicationRecord

  belongs_to :category
  
  # タイトル、内容、カテゴリが空なのを許容しない
  validates :title, presence: true
  validates :content, presence: true
  validates :category_id, presence: true

  mount_uploader :image, ImageUploader
end
