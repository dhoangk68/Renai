class CreateRenaisses < ActiveRecord::Migration[8.0]
  def change
    create_table :renaisses do |t|
      t.text :author
      t.text :born_died
      t.text :title
      t.text :date
      t.text :technique
      t.text :location
      t.text :url
      t.text :form
      t.text :type
      t.text :school
      t.text :timeframe

      t.timestamps
    end
  end
end
