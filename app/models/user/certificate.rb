class User::Certificate < ActiveRecord::Base
  belongs_to :user, inverse_of: :certificates

  def self.my_certificates(user)
    return if user.nil?
    user.certificates
  end

  def self.authorize_certificate(user, certificate)
    if user.certificates.where(cainfo: certificate)
      true
    else
      false
    end
  end
end
