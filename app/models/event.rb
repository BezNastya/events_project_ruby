class Event < ApplicationRecord
  has_one :address, dependent: :destroy

  # TODO: додати час до івенту
  # TODO: визначити ще тематичні типи?
  TEMATICS_TYPES = %w[Sport Films Art Political Education Comedian]
  validates :name, presence: true
  validates :tematics, inclusion: {in: TEMATICS_TYPES, message: "Tematics can only be: " + TEMATICS_TYPES.join(", ")}
end
