class ResidentsController < ApplicationController
  before_action :set_resident, only: [:show, :edit, :update, :destroy]

  # GET /resident2s
  # GET /resident2s.json
  def index
    @residents = Resident.all
  end

  # GET /resident2s/1
  # GET /resident2s/1.json
  def show

  end

  # GET /resident2s/new
  def new
    @resident = Resident.new
  end

  # GET /resident2s/1/edit
  def edit
  end

  # POST /resident2s
  # POST /resident2s.json
  def create
    @resident = Resident.new(resident_params)

    respond_to do |format|
      if @resident.save
        format.html { redirect_to @resident, notice: 'Resident was successfully created.' }
        format.json { render :show, status: :created, location: @resident }
      else
        format.html { render :new }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resident2s/1
  # PATCH/PUT /resident2s/1.json
  def update
    respond_to do |format|
      if @resident.update(resident_params)
        format.html { redirect_to @resident, notice: 'Resident was successfully updated.' }
        format.json { render :show, status: :ok, location: @resident }
      else
        format.html { render :edit }
        format.json { render json: @resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resident2s/1
  # DELETE /resident2s/1.json
  def destroy
    @resident.destroy
    respond_to do |format|
      format.html { redirect_to residents_url, notice: 'Resident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resident
      @resident = Resident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def resident_params
      # params.fetch(:resident, {:first_name, :last_name, :next_of_kin})
      params.require(:resident).permit(:first_name, :last_name, :next_of_kin, :date_of_birth, :sex, :mobile, :address, :postcode, :medical_conditions, :dob)
    end
end
