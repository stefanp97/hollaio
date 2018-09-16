class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :details
      t.string :priority
      t.string :status
      t.date :expected_completion_date
      t.belongs_to :tenant, foreign_key: true

      t.timestamps
    end
  end
end
