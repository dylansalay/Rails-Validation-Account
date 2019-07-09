class CreatePasswordValidators < ActiveRecord::Migration[5.2]
  def change
    create_table :password_validators do |t|

      t.timestamps
    end
  end
end
