ActiveAdmin.register Contact do

  permit_params :first_name, :last_name, :phone_number, :allows_text,
                :email, :url, :description, :is_main, :office_id, :company_id
  
end
