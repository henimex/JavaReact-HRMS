package hendev.twoFaceCarrier.business.concretes;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import hendev.twoFaceCarrier.business.abstracts.UserService;
import hendev.twoFaceCarrier.dataAccess.abstracts.UserDao;
import hendev.twoFaceCarrier.entites.concretes.User;
import net.bytebuddy.asm.Advice.This;

@Service
public class UserManager implements UserService{

	private UserDao userDao;
	
	@Autowired
	public UserManager(UserDao userDao) {
		super();
		this.userDao = userDao;
	}

	@Override
	public User register(User user) {
		
		this.userDao.findById(1);
		//this.userDao.findOne(user.getUsername(user.setUsername(null)));
		return this.userDao.save(user);
	}

	@Override
	public boolean login(User user) {
		//this.userDao.findAll().
		return false;
	}

}
