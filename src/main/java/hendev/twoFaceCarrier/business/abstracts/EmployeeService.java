package hendev.twoFaceCarrier.business.abstracts;

import hendev.twoFaceCarrier.entites.concretes.Employee;

public interface EmployeeService {
	Employee assignUserAsEmployee(Employee employee);
	boolean removeAssigmentOfEmployee(Employee employee);
}
