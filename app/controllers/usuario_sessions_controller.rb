class UsuarioSessionsController < ApplicationController
	def new
		@usuario = Usuario.new
	end 

	def create
		if @usuario = login(params[:username],params[:password])
			redirect_back_or_to(post_path, message: "Acceso Correcto")
		else
			flash.now[:alert] = "Acceso incorrecto"
			render action: :new
		end		
	end

	def destroy
		logout
		redirect_to(:usuarios, message: "bye, bye")	
	end
end