class AddEventToWorkshops < ActiveRecord::Migration[5.0]
  def change
    add_reference :workshops, :event, foreign_key: true
  end
end
