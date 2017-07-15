package com.yc.biz.impl;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import com.yc.bean.User;
import com.yc.biz.UserBiz;
import com.yc.dao.DBHelper;
import com.yc.utils.Encrypt;

public class UserBizImpl implements UserBiz {
	private DBHelper db=new DBHelper();

	@Override
	public boolean reg(User user) throws Exception {
		if(   user.getUname()==null){
			throw new Exception("註冊的用戶名不能為空");
		}
		if(  user.getPwd()==null){
			throw new Exception("註冊的密碼不能為空");
		}
		if(  ! user.getPwd().equals(user.getPwdagain())){
			throw new Exception("兩次輸入的密碼不相同");
		}
		
		String sql="insert into users(uname,pwd,email,status) values( ?,?,?,1)";
		List<Object> params=new ArrayList<Object>();
		params.add(  user.getUname()  );
		params.add(  Encrypt.md5( Encrypt.md5(user.getPwd()) )  );
		params.add(  user.getEmail() );
		db.doUpdate(sql, params);
		return true;
	}

	@Override
	public User login(User user) throws Exception {
		String sql="select usid, email from users where uname=? and pwd=? and status=1";
		List<Object> params=new ArrayList<Object>();
		params.add(  user.getUname()  );
		params.add(  Encrypt.md5( Encrypt.md5(user.getPwd()) )  );
		
		List<Map<String,Object>> list=db.findMultiObject(sql, params);
		if( list==null || list.size()<=0){
			return null;
		}
		Map<String,Object> map=list.get(0);
		user.setUsid(    Integer.parseInt( map.get("usid").toString() ));
		user.setEmail(    map.get("email").toString());
		user.setStatus(1);
		
		
		return user;
	}

}
