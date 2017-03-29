class RemoveEventFromWorkshops < ActiveRecord::Migration[5.0]
  def change
    remove_reference :workshops, :event, foreign_key: true
  end
end
