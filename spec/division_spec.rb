require('spec_helper')

describe('Division') do
  describe('.create') do
    it('will create a division in the company') do
      new_division = Division.create(name: "DoDo")
      expect(new_division.name).to(eq('DoDo'))
    end
  end
  describe("#employees")do
    it ("will list all empolyees in a division") do
      new_division = Division.create(name: "DoDo")
      employee = new_division.employees().create(name: "Herbert")
      expect(new_division.employees).to(eq([employee]))
    end
  end
end
