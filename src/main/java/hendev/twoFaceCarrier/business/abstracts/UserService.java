package hendev.twoFaceCarrier.business.abstracts;

import hendev.twoFaceCarrier.entites.concretes.User;

public interface UserService {
	User register(User user);
	boolean login(User user);
}
