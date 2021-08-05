class AddRegistrationFieldToYfcase < ActiveRecord::Migration[5.2]
  def change
     add_column :yfcases, :cause_data, :date
     add_column :yfcases, :application_for_registration, :string
     add_column :yfcases, :reason_for_registration, :string
     add_column :yfcases, :marking_and_application_rights, :string
     add_column :yfcases, :attached_Document_Content_1, :string
     add_column :yfcases, :number_of_attached_quantity_1, :integer
     add_column :yfcases, :attached_Document_Content_2, :string
     add_column :yfcases, :number_of_attached_quantity_2, :integer
     add_column :yfcases, :attached_Document_Content_3, :string
     add_column :yfcases, :number_of_attached_quantity_3, :integer
     add_column :yfcases, :registration_notes, :string
  end
end
