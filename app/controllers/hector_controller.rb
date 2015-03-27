class HectorController < ApplicationController
	def party
		
		render text: "	!!!!!! Bienvedio al mejor organisador de fiesta, 
									donde puedes crear tu propio tomorrowland	!!!!!!!!"
	end

	def all
		 
		render json: mostrar()
		
	end

	def find
		
		render json: mostrar[params[:id].to_i] 
		
	end

	def buy

		render json: mostrar.push()
		
	end
end
