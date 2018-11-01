class AddCreditCardAndExpDateColumnsToOrder < ActiveRecord::Migration[5.2]
  def change
    add_column :orders, :credit_card, :string
    add_column :orders, :exp_date, :string
  end
end
