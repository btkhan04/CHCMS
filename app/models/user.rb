class User < ApplicationRecord
  # validates :mobile,:presence => true,
  #                :numericality => true,
  #                :length => { :minimum => 10, :maximum => 15 }
  # validates :assigned_hours,   :presence => {:message => 'hello world, bad operation!'},
  #    :numericality => true,
  #    :length => { :minimum => 1, :maximum => 2 }
  # validates :first_name, presence: { message: "first name can't be blank" }
  # validates_length_of :first_name, within: 2..20, too_long: 'too long', too_short: 'too short'
  # validates :last_name, presence: { message: "last name can't be blank" }
  # VALID_POSTCODE_REGEX = /\A[A-Z]{1,2}[0-9][0-9A-Z]?\s?[0-9][A-Z]{2}\z/i
  # validates :postcode, presence: {message: "invalid postcode"}, format: { with: VALID_POSTCODE_REGEX }
  # VALID_NATIONAL_INSURANCE_REGEX = /\As*[a-zA-Z]{2}(?:\s*\d\s*){6}[a-zA-Z]?\s*\z/i
  # validates :NI, presence: { message: "Invalid National Insurance number" }, format: { with: VALID_NATIONAL_INSURANCE_REGEX }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable, :lockable
  
  has_many :shifts
  has_many :notes

  acts_as_messageable

  def self.by_gender
    self.group("sex").count
  end

  def mailboxer_name
    self.name
  end

  def mailboxer_email(object)
    self.email
  end


  def password_complexity
    if password.present? and not password.match(/^(?=.*[a-z])(?=.*[A-Z])(?=.*\d). /)
      errors.add :password, "must include at least one lowercase letter, one uppercase letter, and one digit"
    end
  end

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:user).permit(:admin, :first_name, :last_name, :email, :password, :password_confirmation, :current_password)
  end

   def name
      self.first_name << " " << self.last_name
  end 
end
