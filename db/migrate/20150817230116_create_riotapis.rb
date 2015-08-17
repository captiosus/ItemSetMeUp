class CreateRiotapis < ActiveRecord::Migration
  def change
    create_table :riotapis do |t|

      t.timestamps null: false
    end
  end
end
