package com.framework.service.system;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import mybatis.dao.DaoSupport;
import com.framework.util.Const;
import com.framework.util.PageData;
import com.framework.util.UuidUtil;
import org.springframework.stereotype.Service;

import com.framework.entity.Page;

/**
 * @descript  用户操作
 * @version 1.0
 */

@Service("UserService")
public class UserService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;

	final String queryRoleParnet = "RoleMapper.queryRoleParnet";		//查询所有角色
	final String insertUserRole = "UserMapper.insertUserRole";			//添加用户的角色信息
	final String insertUser = "UserMapper.insertUser";					//添加用户信息
	final String queryUserRoleInfo = "UserMapper.queryUserRoleInfo";	//查询用户角色信息
	final String queryUserRoleMenuInfo = "UserMapper.queryUserRoleMenuInfo";   //查询用户角色菜单信息
	final String deleteUserRole = "UserMapper.deleteUserRole";			//删除用户角色
	
	/**
	 * 
	 * @descript 查询所有角色
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public List queryRoleParnet() throws Exception {
		List roleList = (List) dao.findForList(queryRoleParnet, null);
		
		return roleList;
	}
	
	/**
	 * 
	 * @descript 查询用户角色信息
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("rawtypes")
	public List queryUserRoleInfo(PageData pd) throws Exception {
		List roleList = (List) dao.findForList(queryUserRoleInfo, pd);
		return roleList;
	}
	/**
    *
    * @descript 查询所有用户信息
    * @param page
    * @return
    * @throws Exception
    */
   @SuppressWarnings("unchecked")
   public List<Map<String, Object>> queryUserInfo(Page page) throws Exception {
       return  (List<Map<String, Object>>) dao.findForList("UserMapper.queryUserlistPage", page);
   }
	/**
	 *
	 * @descript 查询所有用户信息
	 * @param page
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryUserRoleMenuInfo(PageData pd) throws Exception {
		return  (List<Map<String, Object>>) dao.findForList(queryUserRoleMenuInfo, pd);
	}

	/**
	 *
	 * @descript 删除单条用户信息
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public int updateUserByid(PageData page) throws Exception {
		return (int) dao.delete("UserMapper.updateUserByid", page);
	}

	/**
	 *
	 * @descript 新增用户信息
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public String insertUserInfo(PageData pd) throws Exception{
		String flag = Const.FAIL;
		int num = 0;
		
		//添加用户
		num += (int) dao.save(insertUser, pd);
		
		String sysRoldId[] = pd.getString("SYSROLEID").split("::");
		for(int i = 0; i < sysRoldId.length; i++){
			//设置角色用户ID和角色ID
			pd.put("ID", UuidUtil.get32UUID());
			pd.put("RID", sysRoldId[i]);
			
			//添加用户角色
			num += (int) dao.save(insertUserRole, pd);
		}
		
		if(0 < num){
			flag = Const.SUCCESS;
		}
		
		return flag;
	}

	/**
	 *
	 * @descript 查询单个用户信息
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public  List<Map<String, Object>> queryUserById (PageData pd) throws Exception{
		return  dao.findForListMap("UserMapper.queryUserByIdInfo", pd);
	}

	/**
	 *
	 * @descript 修改用户信息
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public String updateUserById(PageData pd) throws Exception{
		String flag = Const.FAIL;
		int num = 0;
		
		//修改数据
		num += (int) dao.update("UserMapper.updateUserById", pd);
		//删除用户角色数据
		num += (int) dao.delete(deleteUserRole, pd);
		
		//添加用户角色数据
		String sysRoldId[] = pd.getString("SYSROLEID").split("::");
		for(int i = 0; i < sysRoldId.length; i++){
			//设置角色用户ID和角色ID
			pd.put("ID", UuidUtil.get32UUID());
			pd.put("RID", sysRoldId[i]);
			
			//添加用户角色数据
			num += (int) dao.save(insertUserRole, pd);
		}
		
		if(0 < num){
			flag = Const.SUCCESS;
		}
		
		return flag;
	}
	
	/**
	 * 
	 * @descript (修改登录用户自己的信息)
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public String updateUserInfo(PageData pd) throws Exception{
		String flag = Const.FAIL;
		int num = 0;
		
		//修改数据
		num = (int) dao.update("UserMapper.updateUserById", pd);				
		
		if(0 < num){
			flag = Const.SUCCESS;
		}
		
		return flag;
	}
	
	/**
	 *
	 * @descript 查询用户名是否存在
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryUserByName(PageData pd) throws Exception{
		return (List<Map<String, Object>>) dao.findForList("UserMapper.queryUserName", pd);
	}
	
	/**
	 * 
	 * @descript (新增用户信息（已注册被删除的情况下）)
	 * @param page
	 * @return
	 * @throws Exception
	 */
	public String updateUser(PageData pd) throws Exception {
		dao.delete("UserMapper.updateUser", pd);
		return Const.SUCCESS ;
	}
	
}
