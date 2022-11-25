class AddCoordinatesToChairs < ActiveRecord::Migration[7.0]
  def change
    add_column :chairs, :latitude, :float
    add_column :chairs, :longitude, :float
  end
end
