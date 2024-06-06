class AddCnpjToSuppliers < ActiveRecord::Migration[7.1]
  def change
    add_column :suppliers, :cnpj, :string
  end
end
