class CreateEmailValidators < ActiveRecord::Migration[5.2]
  def change
    create_table :email_validators do |t|

      t.timestamps
    end
  end
end
