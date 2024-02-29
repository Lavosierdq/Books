class CreateAssemblies < ActiveRecord::Migration[7.1]
  def change
    create_table :assemblies do |t|
      t.string :assembly_reg

      t.timestamps
    end
  end
end
