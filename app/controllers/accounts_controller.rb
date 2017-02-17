class AccountsController < ApplicationController

  def new
  end

  def create
  end

  private

  def account_params
    params.require(:account).permit(:subdomain)
  end
end
