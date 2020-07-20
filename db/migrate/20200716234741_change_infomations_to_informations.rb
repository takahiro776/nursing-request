class ChangeInfomationsToInformations < ActiveRecord::Migration[5.2]
  def change
    rename_table :infomations, :informations
  end
end
