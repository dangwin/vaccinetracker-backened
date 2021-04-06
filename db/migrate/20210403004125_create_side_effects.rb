class CreateSideEffects < ActiveRecord::Migration[6.0]
  def change
    create_table :side_effects do |t|
      t.string "side_effect"
      t.integer "patient_id"
      t.timestamps
    end
  end
end
