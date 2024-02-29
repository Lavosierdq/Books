class CreateJoinTableAssemblyBook < ActiveRecord::Migration[7.1]
  def change
    create_join_table :assemblies, :books do |t|
       t.index [:assembly_id, :book_id]
       t.index [:book_id, :assembly_id]
    end
  end
end
