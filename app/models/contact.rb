# == Schema Information
#
# Table name: contacts
#
#  id                :integer          not null, primary key
#  first_name        :string(255)
#  last_name         :string(255)
#  company_name      :string(255)
#  parent_company_id :integer
#  phone_number      :string(255)
#  allows_text       :boolean          default(TRUE)
#  email             :string(255)
#  url               :string(255)
#  description       :text
#  is_main           :boolean
#  office_id         :integer
#  created_at        :datetime
#  updated_at        :datetime
#  company_id        :integer
#

class Contact < ActiveRecord::Base

  belongs_to :office

  belongs_to :company

end
