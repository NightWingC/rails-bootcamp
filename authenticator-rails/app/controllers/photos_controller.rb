class PhotosController < ApplicationController
  # incluir el CONCER
  include Geolocalizable

  # Brincar tipos de filtros en este caso el before_action
  skip_before_action :verify_authenticity_token

  # Filtros en el controlador
  before_action :set_photo, only: [ :show, :update, :destroy ]
  layout "landing"

  # def set_photo
  #   puts "\n\nI'm in around action\n\n"
  # end

  ######################################################
  def index
    # Usar una cookie o session
    # cookie[:intentos] = 1
    # session[:intentos] = 1

    # Leer coookie
    # cookies[:intentos]
    # session[:intentos]

    # Encriptar cookies
    # Rails.application.secret_key_base

    puts params
    puts ("aquiiiiiiiiiiiiii")
    @photos = Photo.all

    # Mensaje flash o notice
    flash[:notice] = "Algo salió mal"
    render "index", layout: "application"
  end

  def show
    # @photo = Photo.find(params[:id])
    respond_to do | format |
      # HTML
      format.html { render :show }
      format.json { render json: @photo }
      # JSON
      # Script js
    end
    # render json: @photo
  end

  def new
    session[:intentos] = session[:intentos] ? session[:intentos] + 1 : 1
    @photo = Photo.new
  end

  def edit
    # @id = params[:id]
    @photo = Photo.find(params[:id])
    @tag = Tag.all
  end

  def update
    # photo = Photo.find(params[:id])
    # Version anterior
    # photo.title = params[:photo][:title]
    # photo.image_url = params[:photo][:image_url]
    # photo.save

    @photo.update(photo_params)
    redirect_to photo
  end

  def create
    # Version anterior
    # photo = Photo.new
    # photo.title = params[:photo][:title]
    # photo.image_url = params[:photo][:image_url]
    # photo.save
    # redirect_to photo


    # Declaras los campos que son permitidos
    # filtered_params = params.permit(:email, :password, ids: [])

    # Si falla se guarda vacio
    # filtered_params = params.fecth(photo: {}).permit(:title, :image_url)

    # Si falla manda un error
    # filtered_params = params.require(:photo).permit(:title, :image_url)

    # @photo = Photo.new(params[:photo])
    @photo = Photo.new(photo_params)
    if @photo.save
      format.html { redirect_to @photo, notice: "Guardado" }
      format.json { render json: @photo, status: :created }
    else
      format.html { redirect_back fallback_location: photos_path, notice: "Algo salió mal #{ @photo.errors.full_messages.to_sentence }" }
    end

    # respond_to do | format |
    #   format.html { redirect_to @photo, notice: "Guardado" }
    #   format.json { render json: @photo, status: :created }
    # end
  end

  def destroy
    # photo = Photo.find(params[:id])
    # photo.destroy
    # redirect_to "/photos"

    # photo = Photo.find(params[:id])
    @photo.destroy

    respond_to do | format |
      format.html { redirect_to photo_path }
      format.json { head 200 }
    end
  end


  private

    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:title, :image_url, :todo_id, tag_ids: [])
    end
end
