class ContractsController < ApplicationController
  def index
    @contracts = Contract.where(user: current_user)
  end

  def new
    @contract = Contract.new
  end

  def my_contracts
    @contracts = Contract.where(hitman: current_user.hitman)
  end

  def create
    @contract = Contract.new
    if @contract.save
      redirect_to contracts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    redirect_to user_contracts_path, status: :see_other
  end
end
