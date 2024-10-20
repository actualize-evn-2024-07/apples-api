class CreateApples < ActiveRecord::Migration[7.1]
  def change
    create_table :apples do |t|
      t.string :variety
      t.string :color
      t.string :mass

      t.timestamps
    end
  end
end
