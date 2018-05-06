json.extract! cellphone, :id, :Name, :Brand, :Year_Released, :Camera, :Mpixel, :Internal_Storage, :No_Sim_Slot, :Size_of_Screen, :OS, :Stock, :created_at, :updated_at
json.url cellphone_url(cellphone, format: :json)
