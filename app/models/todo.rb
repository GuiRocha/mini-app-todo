class Todo < ApplicationRecord
  has_many :items , dependent: :destroy

  validates_presence_of :title, presence: true
  validates_presence_of :description
end
