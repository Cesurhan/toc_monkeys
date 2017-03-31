class FkIncompany < ActiveRecord::Migration[5.0]
  def change
    add_reference :incompanies, :workshop, foreign_key: true
  end
end
