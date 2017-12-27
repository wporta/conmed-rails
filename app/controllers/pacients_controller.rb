##
# Manejador de peticiones dirigidas a pacientes.
class PacientsController < ApplicationController
  include FormConcern

  def save
    begin
      @pacient = Pacient.new
      @pacient.attributes = pacient_params
      @pacient.pacient_active = true
      @pacient.save!
      flash[:info] = 'Datos almacenados exitosamente!'
      redirect_to index_path
    rescue ActiveRecord::RecordInvalid
      flash.now[:error] = 'Verifique los datos insertados'
      render index_path
    end
  end

  def destroy
    begin
      id = params[:id]
      @pacient = Pacient.find(params[:id])
      @pacient.pacient_active = false
      @pacient.save
      redirect_to index_path
    end
  end

  private

  ##
  # Método de encapsulacion de los parametros permitodos en este controller.
  def pacient_params
    params.require(:pacient).permit(:first_name, :last_name, :age, :gender_id, :id_number, :phone, :email, :record_number)
  end
end
