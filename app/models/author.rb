class Author < ActiveRecord::Base
  has_many :comics

  validates :name, presence: true
end
