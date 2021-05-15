package hendev.twoFaceCarrier.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;

import hendev.twoFaceCarrier.entites.concretes.Employer;

public interface EmployerDao extends JpaRepository<Employer, Integer>{

}
