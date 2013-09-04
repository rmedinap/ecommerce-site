class CreateContactTopics < ActiveRecord::Migration
  def up
    create_table :spree_contact_topics do |t|
      t.string :name
      t.string :emails

      t.timestamps
    end
  end

  def down
    drop_table :spree_contact_topics
  end
end
