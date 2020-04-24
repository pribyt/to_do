class Task < ApplicationRecord
  belongs_to :project

  validates :name, :project_id, presence: true, on: :create
  validates :name, :project_id, presence: true, on: :update
end
