class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable

  has_many :certificates, inverse_of: :user, dependent: :destroy
  has_many :mobilephones, inverse_of: :user, dependent: :destroy
  has_many :nfcs, inverse_of: :user, dependent: :destroy

end
