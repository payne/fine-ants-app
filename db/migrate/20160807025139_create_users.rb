class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.references :bank, index: true, foreign_key: true
      t.string :user
      t.string :password

      t.timestamps null: false
    end
  end
end
