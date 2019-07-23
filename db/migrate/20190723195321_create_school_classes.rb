class CreateSchoolClasses < ActiveRecord::Migration[5.0]
  def change
    create_table :school_classes do |t|
      t.integer :room_number
      t.string :title
    end
  end
end
