package hendev.twoFaceCarrier.business.abstracts;

public interface ConfirmationService {
	boolean confirmByMail(String userConfirmationCode);
}
