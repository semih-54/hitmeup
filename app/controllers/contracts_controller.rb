class ContractsController < ApplicationController
  def index
    @contracts = Contract.all
  end

  def new
    @contract = Contract.new
  end

  def create
    @contract = Contract.new
    if @contract.save
      redirect_to user_contracts_path
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
