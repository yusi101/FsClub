/**
 * @descript (用一句话描述改方法的作用)
 * @author 李海涛
 * @createTime 2016年12月19日上午10:32:50
 * @version 1.0
 */
package com.framework.test;

import java.sql.CallableStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DecimalFormat;

import org.apache.ibatis.type.FloatTypeHandler;
import org.apache.ibatis.type.JdbcType;

import java.sql.PreparedStatement;

public class TwoDecimalFloatTypeHander extends FloatTypeHandler{ 


	@Override 
	public void setNonNullParameter(PreparedStatement ps, int i, Float parameter, JdbcType jdbcType) 
			throws SQLException { 
		ps.setFloat(i, parameter); 
	} 

	@Override 
	public Float getNullableResult(ResultSet rs, String columnName) 
			throws SQLException { 
		return keepTwoDecimalFloat(rs.getFloat(columnName)); 
	} 

	@Override 
	public Float getNullableResult(ResultSet rs, int columnIndex) 
			throws SQLException { 
		return keepTwoDecimalFloat(rs.getFloat(columnIndex)); 
	} 

	@Override 
	public Float getNullableResult(CallableStatement cs, int columnIndex) 
			throws SQLException { 
		return keepTwoDecimalFloat(cs.getFloat(columnIndex)); 
	} 
	/** 
	 * Float 保留两位小数 
	 * @return 
	 */ 
	public static Float keepTwoDecimalFloat(Float f) { 
		System.out.println(f);
		DecimalFormat decimalFormat=new DecimalFormat(".00"); 
		return Float.parseFloat(decimalFormat.format(f)); 
	} 

}
