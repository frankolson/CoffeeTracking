class AccountsController < ApplicationController

  def new
    @account = Account.new
  end

  def create
    @account = Account.new(account_params)
    if @account.save
      redirect_to root_path, notice: "Your account was successfully created"
    else
      render :new
    end
  end

  private

  def account_params
    params.require(:account).permit(:subdomain)
  end
end
