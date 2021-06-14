class CreateSearch < ActiveRecord::Migration[6.1]
  def change
    create_table :searches do |t|
      t.string :city
      t.references :user 
      t.timestamps
    end
  end
end
