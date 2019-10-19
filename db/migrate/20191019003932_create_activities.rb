class CreateActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :activities do |t|
      t.string :name
      t.text :summary
      t.string :platform
      t.integer :skill_level
      t.text :details
      t.string :outcome
      t.text :how_to_enroll
      t.float :cost

      t.timestamps
    end
  end
end
