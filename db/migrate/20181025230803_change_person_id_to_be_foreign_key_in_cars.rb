class ChangePersonIdToBeForeignKeyInCars < ActiveRecord::Migration[5.2]
  def change
    remove_column :cars, :person_id, :integer
    add_column :cars, :person_id, :integer, references: :person
  end

  def down
    create_column :cars, :person_id, :integer
  end
end
