class AddBuildLandNumberToBuilds < ActiveRecord::Migration[5.2]
  def change
    add_column :builds, :buildLandNumber, :string
  end
end
