class CreateMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :content
      t.belongs_to :sender, index: true
      t.belongs_to :recipient, index: true
      t.belongs_to :parent, index: true
      t.boolean :private
      t.timestamps
    end
  end
end
