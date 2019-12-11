class CreateAddNew2s < ActiveRecord::Migration[5.2]
  def change
    create_table :add_new_2s do |t|

      add_column :photos, :user_id, :integer
    end
  end
end
