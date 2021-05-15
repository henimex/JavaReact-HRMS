package hendev.twoFaceCarrier.business.concretes;

import java.util.List;

import org.springframework.stereotype.Service;

import hendev.twoFaceCarrier.business.abstracts.BaseService;

@Service
public class BaseManager<T> implements BaseService<T> {

	@Override
	public List<T> getAll() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T getById(int id) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T addEntity(T entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T removeEntity(T entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public T updateEntity(T entity) {
		// TODO Auto-generated method stub
		return null;
	}

}
