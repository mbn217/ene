package edu.umgc.cmsc495.ene.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.umgc.cmsc495.ene.dao.UserDAO;
import edu.umgc.cmsc495.ene.model.UserModel;

@Service
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userDAO;

	@Override
	public Integer registerUser(UserModel user) {
		return userDAO.registerUser(user);
	}

	@Override
	public UserModel login(String userName, String password) {
		return userDAO.login(userName, password);
	}
	
}
