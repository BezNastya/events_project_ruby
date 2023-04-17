class Event < ApplicationRecord
  has_one :address, dependent: :destroy
  belongs_to :user
  has_and_belongs_to_many :users_registered, :class_name => "User"

  accepts_nested_attributes_for :address, update_only: true

  # TODO: визначити ще тематичні типи?
  TEMATICS_TYPES = %w[Sport Films Art Political Education Comedian Other]
  validates :name, :user, :tematics, :time, presence: true
  validates :tematics, inclusion: {in: TEMATICS_TYPES, message: "Tematics can only be: " + TEMATICS_TYPES.join(", ")}
end
