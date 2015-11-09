class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.datetime :time
      t.float :bid

      t.timestamps null: false
    end
  end
end
