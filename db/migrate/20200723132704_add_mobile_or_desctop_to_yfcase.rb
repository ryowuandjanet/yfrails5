class AddMobileOrDesctopToYfcase < ActiveRecord::Migration[5.2]
  def change
    add_column :yfcases, :isMobileOrDesktop, :string
  end
end
