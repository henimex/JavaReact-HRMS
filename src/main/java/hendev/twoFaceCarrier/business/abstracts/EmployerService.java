package hendev.twoFaceCarrier.business.abstracts;

import hendev.twoFaceCarrier.entites.concretes.Employer;

public interface EmployerService {
	Employer assignUserAsEmployer(Employer employer);
	boolean removeAssigmentOfEmployer(Employer employer);
}