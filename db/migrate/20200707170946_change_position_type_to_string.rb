class ChangePositionTypeToString < ActiveRecord::Migration[6.0]
  def change
    change_column :players, :position, :string
  end
end
