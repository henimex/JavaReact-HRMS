package hendev.twoFaceCarrier.dataAccess.abstracts;

import org.springframework.data.jpa.repository.JpaRepository;

import hendev.twoFaceCarrier.entites.concretes.Member;

public interface MemberDao extends JpaRepository<Member, Integer>{

}
