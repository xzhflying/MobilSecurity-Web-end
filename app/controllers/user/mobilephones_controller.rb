class User::MobilephonesController < ApplicationController
  def show
  end

  def index
    @mobiles = current_user.mobilephones
  end

  def destroy
  end

  def new
  end

  def create
    @action = Pending.generate_pending_action(current_user, "bind", "mobilephone")
    unless @action.save
      render 'new'
    end

=begin
    pre_count = current_user.mobilephones.count
    while Pending.find(@action.id).enable
      if current_user.mobilephones.count - pre_count == 1
        redirect_to user_mobilephonew_new_path, notice: '手机绑定成功'
      end
      #sleep(100)
    end
=end

  end
end
