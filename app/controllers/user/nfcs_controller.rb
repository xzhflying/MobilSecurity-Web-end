class User::NfcsController < ApplicationController
  def show
  end

  def index
    @nfcs = User::Nfc.my_nfcs(current_user)
  end

  def destroy
  end

  def new
  end

  def create
  end
end
