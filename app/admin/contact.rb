ActiveAdmin.register Contact do

  permit_params :first_name, :last_name, :company_name, :parent_company_id, :phone_number, :allows_text,
                :email, :url, :description, :is_main
  
  # See permitted parameters documentation:
  # https://github.com/gregbell/active_admin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #  permitted = [:permitted, :attributes]
  #  permitted << :other if resource.something?
  #  permitted
  # end
  
end
