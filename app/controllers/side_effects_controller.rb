class SideEffectsController < ApplicationController

    def index
        @side_effects = SideEffect.all
        render json: get_json(@side_effects)
    end


    def create
 
      side_effect = SideEffect.new(side_effect: params[:sideEffect], patient_id: params[:patientId])

      if side_effect.save
        render json: side_effect
      else
        render json: {error: 'error'}, status: :unprocessible_entity
      end
    end

    def show
        binding.pry
        side_effect = SideEffect.find(side_effect: params[:sideEffect])
        render json: side_effect
    end


        private
        
        def get_json(side_effects)
          side_effects.map do |effect|
            result = effect.attributes
            result[:patient] = Patient.find(effect.patient_id).attributes
            result
          end
        end
end
