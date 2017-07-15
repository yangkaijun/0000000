package com.yc.biz;

import com.yc.bean.User;

public interface UserBiz {
	/**
	 * 将user对象存到数据库，成功，返回true, 失败，返回false
	 * @param user
	 * @return
	 * @throws Exception 
	 */
	public boolean reg(  User user  ) throws Exception;
	
	
	public User login(  User user  ) throws Exception;
}
