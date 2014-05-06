class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.text :contenu

      t.datetime :date
      t.references :topic, index: true
      t.references :user, index: true
      t.timestamps
    end
  end
end
