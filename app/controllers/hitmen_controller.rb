class HitmenController < ApplicationController
  def index
    @hitmen = Hitman.all
  end

  def show
    @hitman = Hitman.find(params[:id])
    @contracts = @hitman.contracts
  end

  def new
    @hitman = Hitman.new
  end

  def create
    @hitman = Hitman.new(hitman_params)
    @hitman.user = current_user
    if @hitman.save
      redirect_to my_contracts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @contract = Contract.find(params[:id])
  end

  private

  def hitman_params
    params.require(:hitman).permit(:description, :birth_year, :photo)
  end
end
