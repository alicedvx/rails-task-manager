class AddDefaultValueToCompletedRestaurants < ActiveRecord::Migration[5.2]
  def change
    change_column_default :tasks, :completed, from: true, to: false
  end
end
