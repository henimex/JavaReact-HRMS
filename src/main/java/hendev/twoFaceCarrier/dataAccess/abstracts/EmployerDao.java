package hendev.twoFaceCarrier.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;

import hendev.twoFaceCarrier.entites.concretes.Employee;

public interface EmployerDao extends JpaRepository<Employee, Integer>{

}
