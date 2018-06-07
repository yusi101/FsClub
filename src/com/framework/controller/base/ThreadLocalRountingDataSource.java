/**
 * @descript (用一句话描述改方法的作用)
 * @author 李海涛
 * @createTime 2016年10月28日下午5:57:19
 * @version 1.0
 */
package com.framework.controller.base;

import org.springframework.jdbc.datasource.lookup.AbstractRoutingDataSource;


public class ThreadLocalRountingDataSource extends AbstractRoutingDataSource {
    @Override
    protected Object determineCurrentLookupKey() {
        return DataSourceTypeManager.get();
    }
}
