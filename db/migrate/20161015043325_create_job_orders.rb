class CreateJobOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :job_orders do |t|
      t.integer :clientId
      t.integer :teamId
      t.integer :netAmount
      t.integer :grossAmount
      t.text :description
      t.datetime :startTime
      t.datetime :stopTime
      t.string :materials

      t.timestamps
    end
  end
end
