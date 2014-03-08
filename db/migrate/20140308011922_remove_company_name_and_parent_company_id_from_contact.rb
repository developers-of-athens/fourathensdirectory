class RemoveCompanyNameAndParentCompanyIdFromContact < ActiveRecord::Migration
  def change
    remove_column :contacts, :parent_company_id
    remove_column :contacts, :company_name
  end
end
