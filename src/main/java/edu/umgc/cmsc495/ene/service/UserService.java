package edu.umgc.cmsc495.ene.service;

import edu.umgc.cmsc495.ene.model.UserModel;

public interface UserService {

	public Integer registerUser(UserModel user);
	public UserModel login(String userName, String password);
}
