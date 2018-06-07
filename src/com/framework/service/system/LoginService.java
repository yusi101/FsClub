package com.framework.service.system;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.framework.util.PageData;
import org.springframework.stereotype.Service;

import mybatis.dao.DaoSupport;
import com.framework.entity.system.User;

/**
 * @descript (用一句话描述改方法的作用)
 * @version 1.0
 */
@Service("loginService")
public class LoginService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	static final  String getUserByNameAndPwd = "LoginMapper.queryUserinfo";
	static final  String queryRoleByUid = "LoginMapper.queryRoleByUid";
	static final  String queryAuthByRid = "LoginMapper.queryAuthByRid";
	static final  String queryAuth = "LoginMapper.queryAuth";
	static final  String queryUser = "LoginMapper.queryUser";
	static final  String updateUserInfo = "LoginMapper.updateUserInfo";
	static final  String updateUser = "LoginMapper.updateUser";
	/**
	 * 
	 * @descript 登录判断
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public User getUserByNameAndPwd(PageData pd) throws Exception {
		List<User> userlist=(List<User>) dao.findForList(getUserByNameAndPwd, pd);
		if(!userlist.isEmpty()){
			return userlist.get(0);
		}else{
			return null;
		}
		
	}
	
	/**
	 * 
	 * @descript 查询用户拥有的角色
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public List queryRoleByUid(PageData pd) throws Exception {
		List roleList = (List) dao.findForList(queryRoleByUid, pd);
		return roleList;
	}
	
	/**
	 * 
	 * @descript 查询角色拥有的权限
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public List queryAuthByRid(String auth) throws Exception {
		PageData pd = new PageData();
		pd.put("auth", auth);
		
		List roleList = (List) dao.findForList(queryAuthByRid, pd);
		
		return roleList;
	}
	
	/**
	 * 查询所有菜单权限
	 * @descript 用于超级管理员
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public List queryAuth() throws Exception {
		
		return (List) dao.findForList(queryAuth, null);
	}

	/**
	 * 
	 * @descript 查询单个用户信息
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryUser(PageData pd) throws Exception {
		return (List<Map<String, Object>>) dao.findForList(queryUser, pd);
	}

	/**
	 * 
	 * @descript 修改用户资料
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public int updateUserInfo(PageData pd) throws Exception {
		return (int) dao.update(updateUserInfo, pd);
	}
	
	/**
	 * 
	 * @descript 修改用户资料
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public int updateUser(PageData pd) throws Exception {
		return (int) dao.update(updateUser, pd);
	}
}
