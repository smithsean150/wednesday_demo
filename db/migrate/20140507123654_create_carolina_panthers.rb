class CreateCarolinaPanthers < ActiveRecord::Migration
  def change
    create_table :carolina_panthers do |t|
      t.string :last_name
      t.string :first_name
      t.integer :number
      t.text :position
      t.integer :years_pro

      t.timestamps
    end
  end
end
