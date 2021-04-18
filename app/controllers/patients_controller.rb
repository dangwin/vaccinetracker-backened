class PatientsController < ApplicationController
    before_action :find_patient, only: [:show, :edit, :update, :destroy]

    def index
        @patients = Patient.all
        render json: @patients
    end

    def create
        @patient = Patient.create(patient_params)
        render json: @patient
    end

    def show
        @patient = Patient.find(params[:id])
        render json: @patient
    end



    def update
        @patient.update(patient_params)
       if @patient.save
        render json: @patient
       else 
        render json: { errors: @patient.errors.full_messages }, status: :unprocessible_entity
    end 
end


    def destroy
        @patient = Patient.find_by(id: params[:id])
        @patient.destroy
        render json: @patient
    end


    private

    def patient_params
        params.require(:patient).permit(:name, :age, :gender, :vaccine)
    end

    def find_patient
        @patient = Patient.find(params[:id])
    end

end
