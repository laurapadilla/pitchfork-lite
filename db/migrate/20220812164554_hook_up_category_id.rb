class HookUpCategoryId < ActiveRecord::Migration[7.0]
  def change
    add_column :albums, :category_id, :integer
  end
end
