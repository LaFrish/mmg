class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :program_name
      t.references :user, index: true, foreign_key: true
    end
  end
end
