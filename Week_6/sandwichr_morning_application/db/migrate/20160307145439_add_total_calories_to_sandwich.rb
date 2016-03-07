class AddTotalCaloriesToSandwich < ActiveRecord::Migration
  def change
    add_column :sandwiches, :total_calories, :integer
  end
end
