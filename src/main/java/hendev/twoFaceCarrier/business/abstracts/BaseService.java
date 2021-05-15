package hendev.twoFaceCarrier.business.abstracts;

import java.util.List;

public interface BaseService<T> {
	List<T> getAll();
	T getById(int id);
    T addEntity(T entity);
    T removeEntity(T entity);
    T updateEntity(T entity);
}
