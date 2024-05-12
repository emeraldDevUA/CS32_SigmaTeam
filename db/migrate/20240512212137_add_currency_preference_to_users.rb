class AddCurrencyPreferenceToUsers < ActiveRecord::Migration[7.1]
  def change
    add_column :users, :currency_preference, :string
  end
end
