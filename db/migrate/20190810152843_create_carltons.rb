class CreateCarltons < ActiveRecord::Migration[5.2]
  def change
    create_table :carltons do |t|

      t.timestamps
    end
  end
end
