class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  # protect_from_forgery with: :exception

  def initialize
    @fiestas = Array.new
      @fiestas.push({"Nombre" => "Romer se corta la barba", "Lugar" => "Barberia El pragmatico", "Fecha" => "01-03-2015", "Reservacion" => "Rechazada"})
      @fiestas.push({"Nombre" => "Marcos no se quedo pegado ", "Lugar" => "Quinta Esmeralda", "Fecha" => "02-03-2015", "Reservacion" => "Aprobada"})
      @fiestas.push({"Nombre" => "Daniel y el viejo truco", "Lugar" => "Pasillos de la UCV", "Fecha" => "03-03-2015", "Reservacion" => "Aprobada"})
      @fiestas.push({"Nombre" => "Emilio y Spock", "Lugar" => "Enterprise", "Fecha" => "04-03-2015", "Reservacion" => "Pendiente"})
      @fiestas.push({"Nombre" => "Abraham y el magico mundo de JS", "Lugar" => "dev/null", "Fecha" => "05-03-2015", "Reservacion" => "Pendiente"})
    
  end
  
end
