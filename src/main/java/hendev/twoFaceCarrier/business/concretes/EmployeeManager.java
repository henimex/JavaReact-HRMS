package hendev.twoFaceCarrier.business.concretes;

import org.springframework.beans.factory.annotation.Autowired;

import hendev.twoFaceCarrier.business.abstracts.EmployeeService;
import hendev.twoFaceCarrier.dataAccess.abstracts.EmployeeDao;
import hendev.twoFaceCarrier.entites.concretes.Employee;

public class EmployeeManager implements EmployeeService{

	private EmployeeDao employeeDao;
	
	@Autowired
	public EmployeeManager(EmployeeDao employeeDao) {
		super();
		this.employeeDao = employeeDao;
	}

	@Override
	public Employee assignUserAsEmployee(Employee employee) {
		System.out.println("Employee Assigment Completed");
		employeeDao.save(employee);
		return employee;
	}

	@Override
	public boolean removeAssigmentOfEmployee(Employee employee) {
		System.out.println("Employee Assigment Removed");
		return true;
	}

}
