class CreateStreams < ActiveRecord::Migration
  def change
    create_table :streams do |t|
      t.string :url
      t.string :name

      t.timestamps
    end
  end
end
