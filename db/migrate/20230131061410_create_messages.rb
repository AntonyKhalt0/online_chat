class CreateMessages < ActiveRecord::Migration[7.0]
  def change
    create_table :messages do |t|
      t.references :chat, foreign_key: true, null: false
      t.string :text

      t.timestamps
    end
  end
end
