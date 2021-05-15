package hendev.twoFaceCarrier.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;

import hendev.twoFaceCarrier.entites.concretes.Confirmation;

public interface ConfirmationDao extends JpaRepository<Confirmation, Integer>{

}
