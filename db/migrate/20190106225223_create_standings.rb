class CreateStandings < ActiveRecord::Migration[5.2]
  def change
    create_table :standings do |t|

      t.timestamps
    end
  end
end
