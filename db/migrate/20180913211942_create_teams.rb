class CreateTeams < ActiveRecord::Migration[5.2]
  def change
    create_table :teams do |t|
      t.string :organization
      t.string :teamname
      t.belongs_to :tenant, foreign_key: true

      t.timestamps
    end
  end
end
