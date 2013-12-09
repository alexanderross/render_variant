class CreateVariantObjects < ActiveRecord::Migration
  def change
    create_table :variant_objects do |t|
      t.string :name
      t.string :desc
      t.timestamps
    end
  end
end
