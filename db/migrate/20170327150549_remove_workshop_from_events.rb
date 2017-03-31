class RemoveWorkshopFromEvents < ActiveRecord::Migration[5.0]
  def change
    remove_reference :events, :workshop, foreign_key: true
  end
end
