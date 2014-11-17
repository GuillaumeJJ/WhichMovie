class SeancesController < ApplicationController
  before_action :set_seance, only: [:show, :edit, :update, :destroy]

  # GET /seances
  # GET /seances.json
  def index
    @seances = Seance.all
  end

  # GET /seances/1
  # GET /seances/1.json
  def show
  end

  # GET /seances/new
  def new
    @seance = Seance.new
  end

  # GET /seances/1/edit
  def edit
  end

  # POST /seances
  # POST /seances.json
  def create
    @seance = Seance.new(seance_params)

    respond_to do |format|
      if @seance.save
        format.html { redirect_to @seance, notice: 'Seance was successfully created.' }
        format.json { render :show, status: :created, location: @seance }
      else
        format.html { render :new }
        format.json { render json: @seance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /seances/1
  # PATCH/PUT /seances/1.json
  def update
    respond_to do |format|
      if @seance.update(seance_params)
        format.html { redirect_to @seance, notice: 'Seance was successfully updated.' }
        format.json { render :show, status: :ok, location: @seance }
      else
        format.html { render :edit }
        format.json { render json: @seance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /seances/1
  # DELETE /seances/1.json
  def destroy
    @seance.destroy
    respond_to do |format|
      format.html { redirect_to seances_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_seance
      @seance = Seance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def seance_params
      params.require(:seance).permit(:heure, :film_id, :cinema_id)
    end
end
