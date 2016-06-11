class CreateVarunscaffolds < ActiveRecord::Migration
  def change
    create_table :varunscaffolds do |t|

      t.timestamps null: false
    end
  end
end
