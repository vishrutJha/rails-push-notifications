class CreateRailsPushNotificationsNotifications < ActiveRecord::Migration
  def change
    create_table :rails_push_notifications_notifications do |t|
      t.text :destinations
      t.integer :app_id
      t.string :app_type
      t.text :data
      t.text :results
      t.integer :failed
      t.integer :succeeded
      t.boolean :sent

      t.timestamps null: false
    end

    add_index :rails_push_notifications_notifications, [:app_id, :app_type, :sent], name: 'app_and_sent_index_on_rails_push_notifications'
  end
end
