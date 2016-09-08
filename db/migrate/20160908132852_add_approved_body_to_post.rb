class AddApprovedBodyToPost < ActiveRecord::Migration
  def change
    add_column :posts, :approoved, :string
  end
end
