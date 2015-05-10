class Pending < ActiveRecord::Base
  dragonfly_accessor :qr

  def self.generate_pending_action(user, action, obj)
    pending = Pending.new(user_id: user.id, enable: true)
    message = user.email + "*" + action + "*" + obj
    qr_code_img = self.generate_qr(message)
    pending.update_attribute :qr, qr_code_img.to_string
    pending
  end

  def self.generate_qr(info)
    RQRCode::QRCode.new( info, :size => 4, :level => :h ).to_img.resize(400,400)
  end
end
