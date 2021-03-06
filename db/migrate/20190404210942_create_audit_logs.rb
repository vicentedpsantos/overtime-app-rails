class CreateAuditLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :audit_logs do |t|
      t.references :user, index: true, foreign_key: true
      t.integer :status
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
