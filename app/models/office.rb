# == Schema Information
#
# Table name: offices
#
#  id           :integer          not null, primary key
#  suite_number :string(255)
#  x_coord      :integer
#  y_coord      :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Office < ActiveRecord::Base

  has_many :contacts
  
end
