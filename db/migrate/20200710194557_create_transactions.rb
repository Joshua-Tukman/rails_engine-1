class CreateTransactions < ActiveRecord::Migration[6.0]
  def change
    create_table :transactions do |t|
      t.references :invoice, null: false, foreign_key: true
      t.string :credit_card_number
      t.string :credit_card_expiration_date
      t.integer :result
      t.datetime :created_at
      t.datetime :updated_at
    end
  end
end
