class MedicalConsultationPaymentsController < ApplicationController
  include FormConcern

  private

  def medical_consultation_payment_params
    params.require(:medical_consultation).permit(:pacient_id, :medical_consultation_date, :next_date, :cost)
  end

  def model
    MedicalConsultation
  end

end