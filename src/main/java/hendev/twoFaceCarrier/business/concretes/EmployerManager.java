package hendev.twoFaceCarrier.business.concretes;

import org.springframework.beans.factory.annotation.Autowired;

import hendev.twoFaceCarrier.business.abstracts.EmployerService;
import hendev.twoFaceCarrier.dataAccess.abstracts.EmployerDao;
import hendev.twoFaceCarrier.entites.concretes.Employer;

public class EmployerManager implements EmployerService {

	private EmployerDao employerDao;
	
	@Autowired
	public EmployerManager(EmployerDao employerDao) {
		super();
		this.employerDao = employerDao;
	}

	@Override
	public Employer assignUserAsEmployer(Employer employer) {
		employerDao.save(employer);
		System.out.println("Employer Assigment Completed");
		return employer;
	}

	@Override
	public boolean removeAssigmentOfEmployer(Employer employer) {
		employerDao.delete(employer);
		System.out.println("Employee Assigment Removed");
		return true;
	}

}
