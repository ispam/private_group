class CreateJoinTableModelContact < ActiveRecord::Migration
  def change
    create_join_table :models, :contacts do |t|
      t.index [:model_id, :contact_id]
      t.index [:contact_id, :model_id]
    end
  end
end
