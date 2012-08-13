class CreateAukcjas < ActiveRecord::Migration
  def change
    create_table :aukcjas do |t|
      t.string :nazwa
      t.text :opis
      t.datetime :termin
      t.decimal :budzet, precision: 8, scale: 2

      t.timestamps
    end
  end
end
