class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable,
         :confirmable

  # CONSTANTS
  VALID_EMAIL_REGEX = /\A\w+[\w+\-.]*@[a-z\d\-.]*[a-z\d]\.[a-z]{2,}\z/i.freeze

  # VALIDATIONS
  validates :email, length: { in: 6..256, allow_blank: true },
                    format: { with: VALID_EMAIL_REGEX, allow_blank: true }
end
