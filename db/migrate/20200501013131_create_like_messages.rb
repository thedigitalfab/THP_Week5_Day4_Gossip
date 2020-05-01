class CreateLikeMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :like_messages do |t|
      t.belongs_to :message, index: true
      t.belongs_to :liketype, index: true
      t.belongs_to :user, index: true

      t.timestamps
    end
  end
end
