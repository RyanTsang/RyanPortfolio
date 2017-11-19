package pers.ryan.portfolio.dao;

import pers.ryan.portfolio.domain.User;

public interface UserMapper {

	public User findUserById(String id);
	
	public void insertUser(User user);
	
	/***
	 * 
	 * @return max(num) +1 in Database
	 */
	public Integer getNextNum();
	
	public void updateUser(User user);
}
