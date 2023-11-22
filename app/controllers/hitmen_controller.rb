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

  def edit
    @contract = Contract.find(params[:id])
  end
end
