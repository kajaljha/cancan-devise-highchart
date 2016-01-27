class CreateSocials < ActiveRecord::Migration
  def change
    create_table :socials do |t|
      t.string :provider
      t.string :uid
      t.string :name

      t.timestamps null: false
    end
  end
end
