package hendev.twoFaceCarrier.business.concretes;

import hendev.twoFaceCarrier.business.abstracts.MernisService;
import hendev.twoFaceCarrier.entites.concretes.Member;

public class MernisManager implements MernisService {

	@Override
	public boolean validateMember(Member member) {
		// TODO Validation Process
		System.out.println("Mernis Validation Completed.");
		return true;
	}

}
