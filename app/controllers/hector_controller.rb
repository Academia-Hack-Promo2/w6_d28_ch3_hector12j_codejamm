class HectorController < ApplicationController
	def party
		
		render text: "	!!!!!! Bienvedio al mejor organisador de fiesta, 
									donde puedes crear tu propio Tomorrowland	!!!!!!!!"
	end

	def all_partys #todas las fiestas
		 
		render json: @fiestas
		
	end

	def find #encontrar una fiesta
		
		render json: @fiestas[params[:id].to_i] 
		
	end

	def buy #nueva fiesta

		render json: @fiestas.push(params[:fiesta])
		
	end

	def actualizar #actualizar una fiesta 
		p = @fiestas[params[:id].to_i]
		render json: p.permit(:Nombre, :Lugar, :Fecha, :Reservacion)
		
	end

	def delete
		p = render json: @fiestas[params[:id].to_i]
		p.delete(:Nombre)
		
	end

end
