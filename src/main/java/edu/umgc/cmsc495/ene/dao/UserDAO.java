package edu.umgc.cmsc495.ene.dao;

import edu.umgc.cmsc495.ene.model.UserModel;

public interface UserDAO {

	public Integer registerUser(UserModel user);
	public UserModel login(String userName, String password);
}
