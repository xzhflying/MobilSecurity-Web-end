class User::Certificate < ActiveRecord::Base
  belongs_to :user, inverse_of: :certificates

  def self.authorize_certificate(user, certificate)
    if user.certificates.where(cainfo: certificate)
      true
    else
      false
    end
  end
end
