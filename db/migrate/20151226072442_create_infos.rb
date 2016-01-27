class CreateInfos < ActiveRecord::Migration
  def change
    create_table :infos do |t|
      t.string :first_name
      t.string :last_name
      t.string :father_name
      t.date :DOB
      t.date :DOJ
      t.string :Expericence
      t.text :prevoius_company
      t.text :address
      t.bigint :contact_no
      t.bigint :Reference_contact_no
      t.integer :sallry
      t.string :probation

      t.timestamps null: false
    end
  end
end
