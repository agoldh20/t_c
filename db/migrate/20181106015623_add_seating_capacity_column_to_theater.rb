class AddSeatingCapacityColumnToTheater < ActiveRecord::Migration[5.2]
  def change
    add_column :theaters, :seating_capacity, :integer
  end
end
