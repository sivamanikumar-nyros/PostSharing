class CreateShares < ActiveRecord::Migration[5.2]
  def change
    create_table :shares do |t|
      t.string :name
      t.date :time
      t.references :user, foreign_key: true
      t.references :post, foreign_key: true

      t.timestamps
    end
  end
end
