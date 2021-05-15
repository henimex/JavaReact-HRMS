package hendev.twoFaceCarrier.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;

import hendev.twoFaceCarrier.entites.concretes.AuthClaim;

public interface AuthClaimDao extends JpaRepository<AuthClaim, Integer>{

}
