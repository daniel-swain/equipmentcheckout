class EquipmentController < ApplicationController
  def new
    @equipment = Equipment.new
  end

  def create
    @equipment = Equipment.new(equipment_params)
    if @equipment.save
      flash[:success] = "Equipment Successfully Added!"
      redirect_to @equipment
    else
      render 'new'
    end
  end

  def index
    @equipment = Equipment.all
  end

  def edit
  end

  def show
    @equipment = Equipment.find(params[:id])
  end

  def destroy
  end

  private 

    def equipment_params
      params.fetch(:equipment, {}).permit(:tag, :name, :status)
    end

end
