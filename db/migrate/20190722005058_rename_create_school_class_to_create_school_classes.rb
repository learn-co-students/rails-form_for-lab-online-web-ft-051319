class RenameCreateSchoolClassToCreateSchoolClasses < ActiveRecord::Migration[5.0]
  def change
    rename_table :school_class, :school_classes
  end
end
