package hendev.twoFaceCarrier.business.abstracts;

import hendev.twoFaceCarrier.entites.concretes.Member;

public interface MemberService {
	Member assignUserAsMember(Member member);
	boolean removeAssigmentOfMemeber(Member member);
}