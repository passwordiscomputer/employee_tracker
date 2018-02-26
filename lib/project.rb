class Project < ActiveRecord::Base
  def change
    remove_column(:employees, :Name, :string)
    add_column(:employees, :name, :string)
  end
end
