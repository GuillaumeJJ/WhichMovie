class FilmsController < ApplicationController
  before_action :set_film, only: [:show, :edit, :update, :destroy, :send_like, :show_likes]

  skip_before_action :verify_authenticity_token, only: [:send_like]
  # GET /films
  # GET /films.json
  def index
    @films = Film.all 
  end

  # GET /films/1
  # GET /films/1.json
  def show
  end

  # GET /films/new
  def new
    @film = Film.new
  end

  # GET /films/1/edit
  def edit
  end

  # POST /films
  # POST /films.json
  def create
    @film = Film.new(film_params)

    respond_to do |format|
      if @film.save
        format.html { redirect_to @film, notice: 'Film was successfully created.' }
        format.json { render :show, status: :created, location: @film }
      else
        format.html { render :new }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /films/1
  # PATCH/PUT /films/1.json
  def update
    respond_to do |format|
      if @film.update(film_params)
        format.html { redirect_to @film, notice: 'Film was successfully updated.' }
        format.json { render :show, status: :ok, location: @film }
      else
        format.html { render :edit }
        format.json { render json: @film.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /films/1
  # DELETE /films/1.json
  def destroy
    @film.destroy
    respond_to do |format|
      format.html { redirect_to films_url }
      format.json { head :no_content }
    end
  end

#definition du like
  def send_like
    # On crée un nouvel objet booking à partir des paramètres reçus
    @other_likes=@film.likes
    @like = Like.new(like_params)
    # On précise que cet object Booking dépend du show concerné
    @like.film = @film
     puts YAML::dump(@like)

    respond_to do |format|
      if @like.save
        format.json
      else
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  def show_likes
    @likes= @film.likes
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @likes}
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film
      @film = Film.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_params
      params.require(:film).permit(:titre, :realisateur, :acteurs, :BO, :synopsis, :datesortie,:affiche)
    end

    def like_params
      params.require(:like).permit(:user_name)
    end
end
