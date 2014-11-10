class CinemasController < ApplicationController
  before_action :set_cinema, only: [:show, :edit, :update, :destroy]
  before_filter :load_film
  # GET /cinemas
  # GET /cinemas.json

  def index
    @cinemas = @film.cinemas.all
  end

  # GET /cinemas/1
  # GET /cinemas/1.json
  def show
    @cinema = @film.cinemas.find(params[:id]) #n'y était pas avant, peut-être supprimer en temps 2
  end

  # GET /cinemas/new
  def new
    @cinema = @film.cinemas.new
  end

  # GET /cinemas/1/edit
  def edit
    @cinema = @film.cinemas.find(params[:id])  #n'y était pas avant, peut-être supprimer en temps 2

  end

  # POST /cinemas
  # POST /cinemas.json
  def create
    @cinema = @film.cinemas.new(cinema_params)

    respond_to do |format|
      if @cinema.save
        format.html { redirect_to [@film, @cinema], notice: 'Cinema was successfully created.' }
        format.json { render :show, status: :created, location: @cinema }
      else
        format.html { render :new }
        format.json { render json: @cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cinemas/1
  # PATCH/PUT /cinemas/1.json
  def update
    @cinema = @film.cinemas.find(params[:id])
    respond_to do |format|
      if @cinema.update(cinema_params)
        format.html { redirect_to [@film, @cinema], notice: 'Cinema was successfully updated.' }
        format.json { render :show, status: :ok, location: @cinema }
      else
        format.html { render :edit }
        format.json { render json: @cinema.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cinemas/1
  # DELETE /cinemas/1.json
  def destroy
    @cinema = @film.cinemas.find(params[:id])
    @cinema.destroy
    respond_to do |format|
      format.html { redirect_to film_cinemas_path(@film) }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cinema
      @cinema = Cinema.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cinema_params
      params.require(:cinema).permit(:ville, :adresse, :seancehoraire, :nom,:film_id)
    end

  private
    def load_film
    @film=Film.find(params[:film_id])
    end
end
