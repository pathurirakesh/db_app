class CreateMicrooposts < ActiveRecord::Migration
  def change
    create_table :microoposts do |t|
      t.string :content
      t.integer :user_id

      t.timestamps
    end
  end
end
