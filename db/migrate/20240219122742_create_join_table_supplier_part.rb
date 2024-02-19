class CreateJoinTableSupplierPart < ActiveRecord::Migration[7.1]
  def change
    create_join_table :suppliers, :parts do |t|
       t.index [:supplier_id, :part_id]
       t.index [:part_id, :supplier_id]
    end
  end
end
