class User::CertificatesController < ApplicationController
  def show
  end

  def index
    @certificates = current_user.certificates
  end

  def destroy
  end

  def new
  end

  def create
    if first_use?
      @ca = current_user.certificates.build(user: current_user, cainfo: Encoder.generate_ca, state: 1)
      if @ca.save
        redirect_to user_certificates_new_path, notice: '数字证书生成成功，请安装并检验是否绑定成功'
      else
        render 'new'
      end
    else
      # 绑定失败
    end
  end
end
