class CreateTechs < ActiveRecord::Migration[5.0]
  def change
    create_table :techs do |t|
      t.string :name
      t.string :tech_number
      t.string :department
      t.string :cert_level
      t.string :email

      t.timestamps
    end
  end
end
