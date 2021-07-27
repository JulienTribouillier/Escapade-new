class AddHeaderToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :header, :string
  end
end
