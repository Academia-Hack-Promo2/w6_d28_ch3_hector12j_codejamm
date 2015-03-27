class JonathanController < ApplicationController
  def party
    render :text => "Bienvenidos a la pachanga, no joda. 
                     Aqui se vino a joder, a demenciar y a tripiar. 
                     El que se quedo pegado, se quedo pegado."
  end
  
  #Solicitar listado de fiestas
  def all
    render json: @fiestas
  end
  
  #Solicitar información de una fiesta en específico
  def show
      render :json => @fiestas[params[:id].to_i]
  end

  #Crear una solicitud de fiesta
  def new
    render :json => @fiestas.push(params[:fiesta])
  end

  #Actualizar una fiesta
  def update
   render :json => @fiestas[params[:id].to_i] = check_permit
  end

  #Borrar una solicitud de fiesta
  def delete
    render :json => @fiestas.delete_at[params[:id].to_i]
  end

  private 

    def check_permit
      params[:fiesta].permit(:Nombre, :Lugar, :Fecha, :Reservacion )
    end




end
