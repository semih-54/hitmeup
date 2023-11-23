class ContractsController < ApplicationController
  def index
    @contracts = Contract.where(user: current_user)
  end

  def new
    @contract = Contract.new
    @hitmen_names = Hitman.all.map { |hitman| hitman.user.username }
  end

  def my_contracts
    @contracts = current_user.contracts_as_hitman
  end

  def create
    @contract = Contract.new(contract_params)
    @contract.user = current_user
    @contract.status = "pending"
    if @contract.save
      redirect_to contracts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  def update
    @contract = Contract.find(params[:id])
    @contract.status = params[:contract][:status]
    @contract.save
    redirect_to my_contracts_path
  end

  def destroy
    @contract = Contract.find(params[:id])
    @contract.destroy
    redirect_to user_contracts_path, status: :see_other
  end

  private

  def contract_params
    params.require(:contract).permit(:expiration_date, :hitman_id, :scenario_id, :victim_name, :victim_age, :victim_location, :victim_description, :budget)
  end
end
