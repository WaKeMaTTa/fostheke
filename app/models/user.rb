class User < ApplicationRecord
  # Others modules available are: :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :confirmable, :trackable

  # CONSTANTS
  VALID_EMAIL_REGEX = /\A\w+[\w+\-.]*@[a-z\d\-.]*[a-z\d]\.[a-z]{2,}\z/i.freeze

  # VALIDATIONS
  validates :first_name, presence: true, length: { in: 1..64, allow_blank: true }
  validates :last_name, presence: true, length: { in: 1..64, allow_blank: true }
  validates :email, length: { in: 6..256, allow_blank: true },
                    format: { with: VALID_EMAIL_REGEX, allow_blank: true }
end
