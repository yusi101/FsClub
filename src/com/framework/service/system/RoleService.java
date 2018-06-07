package com.framework.service.system;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import com.framework.util.PageData;
import org.springframework.stereotype.Service;

import mybatis.dao.DaoSupport;
import com.framework.entity.Page;


/**
 * 
 * @descript (权限)
 * @version 1.0
 */
@Service("roleService")
public class RoleService {

	@Resource(name = "daoSupport")
	private DaoSupport dao;
	
	final String queryRolelistPage = "RoleMapper.queryRolelistPage"; //角色查询分页
	final String queryMenu = "RoleMapper.queryMenu";//查询权限
	final String queryRoleMenu = "RoleMapper.queryRoleMenu";//查询权限
	final String createRole = "RoleMapper.createRole";//添加角色
	final String deleteRole = "RoleMapper.deleteRole";//删除角色
	final String updateRole = "RoleMapper.updateRole";//修改角色
	
	/**
	 * 
	 * @descript (按条件查询角色)
	 * @param page
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryRolelistPage(Page page) throws Exception {
		return  (List<Map<String, Object>>) dao.findForList(queryRolelistPage,page);
	}
	
	/**
	 * 
	 * @descript (查询权限)
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	@SuppressWarnings("unchecked")
	public List<Map<String, Object>> queryMenu(PageData pd) throws Exception {
		return  (List<Map<String, Object>>) dao.findForList(queryMenu,pd);
	}
	
	/**
     * 
     * @descript (查询指定角色的权限)
     * @param pd
     * @return
     * @throws Exception
     */
    @SuppressWarnings("unchecked")
    public List<Map<String, Object>> queryRoleMenu(PageData pd) throws Exception {
        return  (List<Map<String, Object>>) dao.findForList(queryRoleMenu,pd);
    }
	
	
	/**
	 * 
	 * @descript (添加角色)
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public int createRole(PageData pd) throws Exception {
		return (int)dao.save(createRole, pd);
	} 
	
	/**
	 * 
	 * @descript (删除角色)
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public int deleteRole(PageData pd) throws Exception {
		return (int)dao.save(deleteRole, pd);
	} 
	
	/**
	 * 
	 * @descript (修改角色)
	 * @param pd
	 * @return
	 * @throws Exception
	 */
	public int updateRole(PageData pd) throws Exception {
		return (int)dao.save(updateRole, pd);
	} 
}
