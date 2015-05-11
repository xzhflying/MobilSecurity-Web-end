class User::NfcsController < ApplicationController
  def show
  end

  def index
    @nfcs = current_user.nfcs
  end

  def destroy
  end

  def new
  end

  def create
  end
end
