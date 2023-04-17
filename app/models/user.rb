class User < ApplicationRecord
  has_many :events
  has_and_belongs_to_many :events_registered, :class_name => "Event"
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  def admin?
    admin_role
  end

end
