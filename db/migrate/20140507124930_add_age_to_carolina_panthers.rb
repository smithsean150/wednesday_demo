class AddAgeToCarolinaPanthers < ActiveRecord::Migration
  def change
    add_column :carolina_panthers, :age, :integer
  end
end
