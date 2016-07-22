class AddDonorIdToUser < ActiveRecord::Migration
  def change
  	add_column :users, :donor_id, :string
  end
end
