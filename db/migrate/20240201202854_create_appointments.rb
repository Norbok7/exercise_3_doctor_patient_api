# db/migrate/<timestamp>_create_appointments.rb
class CreateAppointments < ActiveRecord::Migration[6.0]
  def change
    create_table :appointments do |t|
      t.datetime :scheduled_at
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true

      t.timestamps
    end
  end
end
