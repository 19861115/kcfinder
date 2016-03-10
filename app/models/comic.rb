class Comic < ActiveRecord::Base
  belongs_to :author
  belongs_to :publisher

  validates :asin, presence: true
  validates :image_path, presence: true
end
