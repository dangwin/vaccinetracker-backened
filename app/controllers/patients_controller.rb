class PatientsController < ApplicationController

    def index
        @patients = Patient.all
        render json: @Patient
    end



end
