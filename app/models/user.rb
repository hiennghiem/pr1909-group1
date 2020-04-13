class User < ApplicationRecord
  has_one :candidate, dependent: :destroy
  has_one :employer, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable, :confirmable

  enum user_type: { candidate: 1, employer: 2, admin: 3 }

  # Validates
  validates :name, presence: true, length: { maximum: 40 }
  validates :user_type, presence: true, inclusion: { in: ["candidate", "employer", "admin"] }

  USER_TYPE = { "Candidate" => "candidate", "Employer" => "employer" }.freeze
end
