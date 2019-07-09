class Sdfsdfsd < ActiveRecord::Migration[5.2]
  def change
      add_column :addresses, :account_id, :integer 
  end
end
