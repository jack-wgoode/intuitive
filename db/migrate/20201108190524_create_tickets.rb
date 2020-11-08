class CreateTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :tickets do |t|
      t.string :ticket_number
      t.string :asset
      t.string :issue
      t.string :priority
      t.string :status
      t.boolean :escalated
      t.references :tech
      t.references :end_user

      t.timestamps
    end
  end
end
