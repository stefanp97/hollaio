class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_one :member, :dependent => :destroy
  has_many :tenants
  acts_as_universal_and_determines_account

  devise :database_authenticatable, :registerable, :confirmable,
         :recoverable, :rememberable, :validatable

end
