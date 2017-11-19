package pers.ryan.portfolio.service;

import java.util.Date;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import pers.ryan.portfolio.dao.UserMapper;
import pers.ryan.portfolio.domain.User;

@Service
public class UserService {

	@Resource
	private UserMapper userMapper;
	
	public User findUserById(String id) {
		return userMapper.findUserById(id);
	}
	
	public Integer getNextNum() {
		Integer res = userMapper.getNextNum();
		if(res == null) {
			res = 1;
		}
		return res;
	}
	
	public void insertUser(User user) {
		userMapper.insertUser(user);
	}
	
	public void updateUser(User user) {
		userMapper.updateUser(user);
	}
	
	/***
	 * 	var user
	 * 	find user by id
	 * 	IF existed then
	 * 		SET user = user was found
	 *  	visit count++
	 *  ELSE then
	 *  	create a new user
	 *  	SET user = new user
	 *  ENDIF
	 *  return 'num' property of user
	 * @param id ipAddress of client
	 * @return the number of this client
	 */
	public Integer getNumById(String id) {
		User user = userMapper.findUserById(id);
		if(user != null) {
			user.setVisitCount(user.getVisitCount()+1);
			updateUser(user);
			return user.getNum();
		}else {
			user = new User();
			user.setId(id);
			user.setNum(this.getNextNum());
			user.setVisitCount(1);
			user.setLastVisit(new Date());
			insertUser(user);
		}
		return user.getNum();
	}
	
}
