class Comic < ActiveRecord::Base
  belongs_to :author
  belongs_to :publisher

  validates :asin, presence: true
  validates :image_path, presence: true
  validates :title, presence: true
  validates :author, presence: true
  validates :publisher, presence: true
end
