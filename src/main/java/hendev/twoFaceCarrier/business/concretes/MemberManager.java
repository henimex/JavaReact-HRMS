package hendev.twoFaceCarrier.business.concretes;

import hendev.twoFaceCarrier.business.abstracts.MemberService;
import hendev.twoFaceCarrier.business.abstracts.MernisService;
import hendev.twoFaceCarrier.dataAccess.abstracts.MemberDao;
import hendev.twoFaceCarrier.entites.concretes.Member;

public class MemberManager implements MemberService{

	private MernisService mernisService;
	private MemberDao memberDao;
	
	@Override
	public Member registerMember(Member member) {

		if (this.mernisService.validateMember(member)) {
			return memberDao.save(member);
		} else {
			System.out.println("Mernis Service Validation Failed. Registiration could not be continue");
		}
		return null;
	}
}