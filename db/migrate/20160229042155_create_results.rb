class CreateResults < ActiveRecord::Migration[5.0]
  def change
    create_table :results do |t|
      t.string :enqueued_by_host
      t.string :run_on_host
      t.timestamps
    end
  end
end
