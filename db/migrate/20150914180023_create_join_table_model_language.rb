class CreateJoinTableModelLanguage < ActiveRecord::Migration
  def change
    create_join_table :models, :languages do |t|
      t.index [:model_id, :language_id]
      t.index [:language_id, :model_id]
    end
  end
end
