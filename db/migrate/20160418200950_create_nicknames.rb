class CreateNicknames < ActiveRecord::Migration
  def change
    create_table :nicknames do |t|
      t.string :n_name

      t.timestamps null: false
    end
  end
end
