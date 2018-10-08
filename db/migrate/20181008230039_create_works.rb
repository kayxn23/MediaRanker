class CreateWorks < ActiveRecord::Migration[5.2]
  def change
    create_table :works do |t|
      t.integer :votes
      t.string :title
      t.string :creator
      t.string :description

      t.timestamps
    end
  end
end
