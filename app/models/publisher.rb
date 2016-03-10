class Publisher < ActiveRecord::Base
  has_many :comics

  validates :name, presence: true
end
