class CreateWorkerCenters < ActiveRecord::Migration[6.1]
  def change
    create_table :worker_centers do |t|
      t.references :worker, null: false, foreign_key: true
      t.references :medical_center, null: false, foreign_key: true

      t.timestamps
    end
  end
end
