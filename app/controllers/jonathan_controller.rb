class JonathanController < ApplicationController
  def party
    render :text => "Bienvenidos a la pachanga, no joda. 
                     Aqui se vino a joder, a demenciar y a tripiar. 
                     El que se quedo pegado, se quedo pegado."
  end
  
  #Solicitar listado de fiestas
  def all
    render :json  => mostrar()
  end
  
  #Solicitar información de una fiesta en específico
  def show
      render :json => mostrar[params[:id].to_i]
  end

  #Crear una solicitud de fiesta
  def new
    mostrae.push()
  end

  #Actualizar una fiesta
  def update

  end

  #Borrar una solicitud de fiesta
  def delete
    mostrar.delete_at[params[:id].to_i]
  end

end
