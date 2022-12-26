package com.uDAO;

import com.uentity.User;

public interface UserInterfaceDao {
	public boolean userRegister(User us);
	public User login(String email,String password);
	public boolean checkPassword(int id,String ps);
	public boolean updateProfile(User us);
	public boolean checkUser(String email);
}
