class AddStationIdToStreams < ActiveRecord::Migration
  def change
    add_column :streams, :station_id, :integer
  end
end
