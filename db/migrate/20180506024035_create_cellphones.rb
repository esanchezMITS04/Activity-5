class CreateCellphones < ActiveRecord::Migration[5.2]
  def change
    create_table :cellphones do |t|
      t.string :Name
      t.string :Brand
      t.string :Year_Released
      t.string :Camera
      t.string :Mpixel
      t.string :Internal_Storage
      t.integer :No_Sim_Slot
      t.string :Size_of_Screen
      t.string :OS
      t.integer :Stock

      t.timestamps
    end
  end
end
