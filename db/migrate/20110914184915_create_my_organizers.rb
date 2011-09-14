class CreateMyOrganizers < ActiveRecord::Migration
  def change
    create_table :my_organizers do |t|
      t.string :title
      t.text :body

      t.timestamps
    end
  end
end
