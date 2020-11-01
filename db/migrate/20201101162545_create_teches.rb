class CreateTeches < ActiveRecord::Migration[5.0]
  def change
    create_table :teches do |t|
      t.string :name
      t.string :tech_number
      t.string :department
      t.string :cert_level
      t.string :email

      t.timestamps
    end
  end
end
