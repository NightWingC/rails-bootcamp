# Definimos el controlador, siempre con el sufijo Controller
class HomeController < ApplicationController
  # Definimos las accion
  def index
    @nombre = "Christian"
    @skills = [ "ruby", "javascript" ]
  end
end