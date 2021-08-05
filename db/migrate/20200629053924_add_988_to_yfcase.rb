class Add988ToYfcase < ActiveRecord::Migration[5.2]
  def change
  	add_column :yfcases, :foreclosure_announcement_988_link, :string
  end
end
