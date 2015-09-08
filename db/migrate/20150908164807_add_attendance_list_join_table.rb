class AddAttendanceListJoinTable < ActiveRecord::Migration
  def change
    create_join_table :users, :meetups, table_name: :attendance_lists do |table|
      table.index :user_id
      table.index :meetup_id
    end
  end
end
