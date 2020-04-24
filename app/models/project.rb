class Project < ApplicationRecord
  has_many :tasks, dependent: :destroy

  validates :name, presence: true, on: :create
  validates :name, presence: true, on: :update
end
