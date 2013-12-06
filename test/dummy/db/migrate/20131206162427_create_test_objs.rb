class CreateTestObjs < ActiveRecord::Migration
  def change
    create_table :test_objs do |t|
      t.string :name
      t.string :desc
      t.timestamps
    end
  end
end
