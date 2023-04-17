class Address < ApplicationRecord
  belongs_to :event

  validates :country, :city, :region, :street, presence: true
  validates :building_number, format: {with: /\A[+-]?\d+\w?\z/, message: "please enter building number with correct format, f.e 13, 14b, 125a"}, allow_nil: true

  def to_s
    "#{country}, #{region}, #{city}, #{street} St. #{building_number}. Additional info: #{additional_info}"
  end
end
