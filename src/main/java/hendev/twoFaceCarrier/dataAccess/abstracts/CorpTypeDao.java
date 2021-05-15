package hendev.twoFaceCarrier.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;

import hendev.twoFaceCarrier.entites.concretes.CorpType;

public interface CorpTypeDao extends JpaRepository<CorpType, Integer>{

}
