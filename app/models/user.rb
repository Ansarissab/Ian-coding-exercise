class User < ApplicationRecord
  has_many :employments

  before_save :normalize_phone

  validates :firstname, presence: true, length: { minimum: 3,
                                                   maximum: 25,
                                                   message: 'must contain atleast 3 characters!' }

  validates :lastname, presence: true, length: { minimum: 3,
                                                   maximum: 5,
                                                   message: 'must contain atleast 3 characters!' }

  validates :phone, phone: true, allow_blank: false
  validates :email, format: { with: Constants::EMAIL_REGEX, message: "Email invalid"  },
                              uniqueness: { case_sensitive: false },
                              length: { minimum: 4, maximum: 254 }

  private

  def normalize_phone
    self.phone = Phonelib.parse(phone).full_e164.presence
  end
end
