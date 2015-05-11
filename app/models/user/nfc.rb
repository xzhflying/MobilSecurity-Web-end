class User::Nfc < ActiveRecord::Base
  belongs_to :user, inverse_of: :nfcs

end
