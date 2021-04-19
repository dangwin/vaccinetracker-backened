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

    def update
      side_effect = SideEffect.find(params[:id])

      if side_effect.update(side_effect: params[:sideEffect])
        render json: side_effect
      else
        render json: {error: 'error'}, status: :unprocessible_entity
      end
    end

    def show
        side_effect = SideEffect.find(params[:id])
        render json: side_effect
    end

    def destroy
        side_effect = SideEffect.find(params[:id])
        if side_effect.destroy
            render json: {message: 'ok'}
          else
            render json: {error: 'error'}, status: :unprocessible_entity
          end
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
