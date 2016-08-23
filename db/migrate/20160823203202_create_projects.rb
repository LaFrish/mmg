class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.integer :project_name
      t.references :user, :program, index: true, foreign_key: true
    end
  end
end
