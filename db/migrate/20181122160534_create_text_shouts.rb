class CreateTextShouts < ActiveRecord::Migration[5.1]
  def change
    create_table :text_shouts do |t|
      t.string :body, nill: false

      t.timestamps
    end
  end
end
