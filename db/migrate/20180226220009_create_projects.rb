class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table(:projects) do |t|
      t.column(:title, :string)
      t.column(:details, :string)

    end
  end
end
