class User::Mobilephone < ActiveRecord::Base
  belongs_to :user, inverse_of: :mobilephones

  def self.bind_mobile(temp_action_id)
    temp_action = Action.find(temp_action_id)
    while temp_action and temp_action.state == 0
      temp_action = Action.find(temp_action_id)
      sleep(3000)
    end
    if temp_action.state == 1
      Action.delete.where(id: temp_action_id)
      true
    else
      false
    end
  end
end
