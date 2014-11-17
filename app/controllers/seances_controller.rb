class SeancesController < ApplicationController
  before_action :set_seance, only: [:show, :edit, :update, :destroy]
  before_filter :load_cinema, :load_film

  # GET /seances
  # GET /seances.json
  def index
    if params[:cinema_id]
      @seance = @cinema.seances.all
    elsif params[:film_id]
      @seance = @film.seances.all
    end

  end

  # GET /seances/1
  # GET /seances/1.json
  def show
    if params[:cinema_id]
      @seance = @cinema.seances.find(params[:id])
    elsif params[:film_id] 
      @seance = @film.seances.find(params[:id])
    end
  end

  # GET /seances/new
  def new
    if params[:cinema_id]
      @seance = @cinema.seances.new
    elsif params[:film_id]
      @seance = @film.seances.new
    end

  end

  # GET /seances/1/edit
  def edit
    if params[:cinema_id]
      @seance = @cinema.seances.find(params[:id])
    elsif params[:film_id]
      @seance = @film.seances.find(params[:id])
    end
  end

  # POST /seances
  # POST /seances.json
  def create
    if params[:cinema_id]
      @seance= @cinema.seances.new(params[:seance])
        respond_to do |format|
          if @seance.save
            format.html { redirect_to [@cinema, @seance], notice: 'Seance was successfully created.' }
            format.json { render :show, status: :created, location: @seance }
          else
            format.html { render :new }
            format.json { render json: @seance.errors, status: :unprocessable_entity }
          end
        end
    elsif params[:film_id]
      @seance= @film.seances.new(params[:seance])
        respond_to do |format|
          if @seance.save
            format.html { redirect_to [@film, @seance], notice: 'Seance was successfully created.' }
            format.json { render :show, status: :created, location: @seance }
          else
            format.html { render :new }
            format.json { render json: @seance.errors, status: :unprocessable_entity }
          end
        end
    end
  end

  # PATCH/PUT /seances/1
  # PATCH/PUT /seances/1.json
  def update
    if params[:cinema_id]
      @seance= @cinema.seances.find(params[:id])
        respond_to do |format|
          if @seance.update(seance_params)
            format.html { redirect_to [@cinema, @seance], notice: 'Seance was successfully updated.' }
            format.json { render :show, status: :ok, location: @seance }
          else
            format.html { render :edit }
            format.json { render json: @seance.errors, status: :unprocessable_entity }
          end
        end
    elsif params[:film_id]
      @seance= @film.seances.find(params[:id])
        respond_to do |format|
          if @seance.update(seance_params)
            format.html { redirect_to [@film, @seance], notice: 'Seance was successfully updated.' }
            format.json { render :show, status: :ok, location: @seance }
          else
            format.html { render :edit }
            format.json { render json: @seance.errors, status: :unprocessable_entity }
          end
        end
    end
  end

  # DELETE /seances/1
  # DELETE /seances/1.json
  def destroy
    if params[:cinema_id]
      @seance = @cinema.seances.find(params[:id])
      @seance.destroy
      respond_to do |format|
        format.html { redirect_to cinema_seances_path(@cinema)}
        format.json { head :no_content }
      end
    elsif params[:film_id]
      @seance = @film.seances.find(params[:id])
      @seance.destroy
      respond_to do |format|
        format.html { redirect_to film_seances_path(@film)}
        format.json { head :no_content }
      end
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
    
    def load_film
      if params[:film_id]
        @film = Film.find(params[:film_id])
      end
    end

    def load_cinema
      if params[:cinema_id]
        @cinema = Cinema.find(params[:cinema_id])
        end
    end
end
