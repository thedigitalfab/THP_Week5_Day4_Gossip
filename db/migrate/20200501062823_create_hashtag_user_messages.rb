class CreateHashtagUserMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :hashtag_user_messages do |t|
      t.belongs_to :message, index: true
      t.belongs_to :hashtag, index: true
      
      t.timestamps
    end
  end
end
