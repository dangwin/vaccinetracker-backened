class PatientsController < ApplicationController

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

    # def updated
    #     @patient.update(patient_params)
    #     if @patient.save
    #         render json: @patient
    #     else 
    #         render json {}
    # end 

    def destroy
        dog = Dog.find_by(id: params[:id])
        dog.destroy
        render json: dog
    end


    private

    def patient_params
        params.require(:patient).permit(:name, :age, :gender, :vaccine)
    end


end
