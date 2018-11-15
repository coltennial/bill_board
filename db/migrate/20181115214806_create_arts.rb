class CreateArts < ActiveRecord::Migration[5.2]
  def change
    create_table :arts do |t|
      t.string :name
      t.belongs_to :board, foreign_key: true

      t.timestamps
    end
  end
end
