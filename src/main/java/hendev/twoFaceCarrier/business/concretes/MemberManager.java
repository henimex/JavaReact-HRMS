package hendev.twoFaceCarrier.business.concretes;

import org.springframework.beans.factory.annotation.Autowired;

import hendev.twoFaceCarrier.business.abstracts.MemberService;
import hendev.twoFaceCarrier.business.abstracts.MernisService;
import hendev.twoFaceCarrier.dataAccess.abstracts.MemberDao;
import hendev.twoFaceCarrier.entites.concretes.Member;

public class MemberManager implements MemberService{

	private MernisService mernisService;
	private MemberDao memberDao;
	
	@Autowired
	public MemberManager(MernisService mernisService, MemberDao memberDao) {
		super();
		this.mernisService = mernisService;
		this.memberDao = memberDao;
	}

	@Override
	public Member assignUserAsMember(Member member) {

		if (this.mernisService.validateMember(member)) {
			System.out.println("Mernis Service Validated.Register Completed");
			return memberDao.save(member);
		} else {
			System.out.println("Mernis Service Validation Failed. Registiration could not be continue");
		}
		return null;
	}

	@Override
	public boolean removeAssigmentOfMemeber(Member member) {
		System.out.println("Member Assigment Removed");
		return false;
	}
}