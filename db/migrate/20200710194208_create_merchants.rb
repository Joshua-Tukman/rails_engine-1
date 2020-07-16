class CreateMerchants < ActiveRecord::Migration[6.0]
  def change
    create_table :merchants do |t|
      t.string :name
      t.date :created_at
      t.date :updated_at
    end
  end
end
