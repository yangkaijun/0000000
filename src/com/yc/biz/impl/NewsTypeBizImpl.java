package com.yc.biz.impl;

import java.lang.reflect.InvocationTargetException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.yc.bean.NewsType;
import com.yc.biz.NewsTypeBiz;
import com.yc.dao.DBHelper;

public class NewsTypeBizImpl implements NewsTypeBiz {
    private DBHelper db=new DBHelper();
	@Override
	public List<NewsType> findNewsType(NewsType newsType) throws Exception{
		String sql=" select * from newstype where 1=1";
		List<Object> params=new ArrayList<Object>();
		if( newsType!=null ){
			 if( newsType.getTid()!=null){
				sql+=" and tid=? ";
				params.add( newsType.getTid());
			}
			if( newsType.getTname()!=null){
				sql+=" and tname like ?";
				params.add( "%"+newsType.getTname()+"%");	
			}
			if( newsType.getStatus()!=null){
				sql+=" and status=?";
				params.add(newsType.getStatus());
			}
		}
		if(  newsType.getSort()!=null){
			sql+=" order by "+ newsType.getSort()+" "+newsType.getOrder()+" ";
		}
		if( newsType.getPage()!=null){
			 int start=( newsType.getPage()-1)*newsType.getRows();
			 sql+=" limit "+start+","+newsType.getRows();
		}
		System.out.println( sql );
		
		List<NewsType> list=db.findObject(sql, params, NewsType.class);
		return list;
	}
	
	public int findNewsCount(NewsType newsType) throws SQLException{
		
		String sql="select count(*) from newstype where 1=1";
		List<Object> params=new ArrayList<Object>();
		if(  newsType!=null ){
			 if( newsType.getTid()!=null){
				sql+=" and tid=? ";
				params.add( newsType.getTid());
			}
			if( newsType.getTname()!=null){
				sql+=" and tname like ?";
				params.add( "%"+newsType.getTname()+"%");	
			}
			if( newsType.getStatus()!=null){
				sql+=" and status=?";
				params.add(newsType.getStatus());
			}
		}
		System.out.println( sql );
		int r=(int)db.getCount(sql, params);
	    return r;
	}

	@Override
	public void add(NewsType newsType) throws Exception {
		
		String  sql="insert into newstype(tname,status) values(?,1)";
		List<Object> params=new ArrayList<Object>();
		params.add(  newsType.getTname());
		db.doUpdate(sql, params);
		
	}

}
