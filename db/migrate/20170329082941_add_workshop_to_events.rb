class AddWorkshopToEvents < ActiveRecord::Migration[5.0]
  def change
    add_reference :events, :workshop, foreign_key: true
  end
end
