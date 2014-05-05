class CreateTopics < ActiveRecord::Migration
  def change
    create_table :topics do |t|
      t.string :titre
      t.references :forum, index: true

      t.timestamps
    end
  end
end
