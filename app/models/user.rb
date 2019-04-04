class User < ApplicationRecord
  has_many :posts
  has_many :audit_logs
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates_presence_of :first_name, :last_name, :phone

  PHONE_REGEX = /[+][0-9]*/

  validates_format_of :phone, with: PHONE_REGEX

  validates :phone, length: { is: 14 }

  def full_name
    "#{last_name.upcase}, #{first_name}"
  end
end
