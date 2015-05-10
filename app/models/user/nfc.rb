class User::Nfc < ActiveRecord::Base
  belongs_to :user, inverse_of: :nfcs

  def self.my_nfcs(user)
    return if user.nil?
    user.nfcs
  end
end
