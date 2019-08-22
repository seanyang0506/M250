package user.factory;

import user.service.UserService;
import user.service.impl.UserServiceImpl;

public class ServiceFactory {
	public static UserService getUserServiceInstance() {
		return new UserServiceImpl();
	}
}
