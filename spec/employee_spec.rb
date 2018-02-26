require('spec_helper')

describe("Employee") do
  describe('#create') do
    it ("adds a new employee to the database") do
      employee = Employee.create(name: "Dave")
      expect(Employee.all).to(eq([employee]))
    end
  end

  describe('assign employees') do
    it("will assign an employee to a division") do
      division = Division.create(name: "Kings Cross Train Station")
      employee = division.employees.create(name: "Paddington Bear")
      expect(employee.division).to(eq(division))
    end
  end
end
