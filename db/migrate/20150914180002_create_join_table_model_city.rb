class CreateJoinTableModelCity < ActiveRecord::Migration
  def change
    create_join_table :models, :cities do |t|
      t.index [:model_id, :city_id]
      t.index [:city_id, :model_id]
    end
  end
end
