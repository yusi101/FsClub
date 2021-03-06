<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>敏感词管理</title>
</head>
<body>
	<%@ include file="../system/allresources.jsp"%>
	<div class="container-fluid">
		<div class="row-fluid">
			<h4 class="title">敏感词管理</h4>
			<div style="width: 10%; float: left;">
				<a class="btn btn-add" onclick="openadd();"><i class="fa fa-plus"></i>&nbsp;新增</a>
			</div>
			<form action="${pageContext.request.contextPath}/keywordController/querykeywordinfo" method="post" name="queryBrandInfo" id="queryBrandInfo" class="form-horizontal" style="margin: 10px 0; height: 30px;">
				<%-- <div style="width: 90%; float: left; text-align: right;">
					<input type="text" placeholder="请输入用户名称" name="NAME" value="${pd.NAME}" style="vertical-align: top;" />
					<button class="btn btn—search" onclick="queryBrandinfo();">搜索</button>
				</div>
				<div class="clren"></div> --%>
			</form>
			<table class="table table-condensed table-bordered table-hover tab">
				<thead>
					<tr>
						<th class="center" width="5%">序号</th>
						<th class="center" width="10%">敏感词</th>
						<th class="center" width="10%">状态</th>
						<th class="center" width="20%">出现该关键词的操作</th>
						<th class="center" width="10%">添加人</th>
						<th class="center" width="15%">创建时间</th>
						<th class="center" width="20%">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${not empty keywordlist }">
						<c:forEach items="${keywordlist }" var="list" varStatus="status">
							<tr>
								<td class="center" width="5%">${status.index+1 }</td>
								<td class="center" width="15%">${list.KEYWORD}</td>
								<td class="center" width="10%">
									<c:if test="${list.STATUS == 0 }">禁用</c:if>
									<c:if test="${list.STATUS == 1 }">启用</c:if>
								</td>
								<td class="center" width="10%">
									<c:if test="${list.TYPE == 0 }">不执行任何操作</c:if>
									<c:if test="${list.TYPE == 1 }">关键词为空</c:if>
									<c:if test="${list.TYPE == 2 }">整条内容变成空</c:if>
								</td>
								<td class="center" width="13%">${list.CREATEUSER_ID}</td>
								<td class="center" width="5%">${list.CREATETIME}</td>
								<td class="dropdown" width="20%">
									<button class="btn btn-edit" onclick="query('${list.ID }')"><i class="fa fa-edit"></i>&nbsp;编辑</button>
									<button class="btn btn-del" onclick="deletekeyword('${list.ID }')"><i class='fa fa-trash'></i>&nbsp;删除</button>
								</td>
							</tr>
						</c:forEach>
					</c:if>
					<c:if test="${empty keywordlist }">
						<tr>
							<td colspan="9" style="color: red; text-align: center;">
								<div align="center">
									<img src="${pageContext.request.contextPath}/static/images/nodata.png" style="width: 100px; margin: 10px auto;">
								</div>
								<div style="margin-bottom: 10px;">小查没有查到数据哦~</div>
							</td>
						</tr>
					</c:if>
				</tbody>
			</table>
			<div class="position-relative">
				<table style="width: 100%;">
					<tr>
						<td style="vertical-align: top;">
							<div class="pagination" style="float: left; padding-top: 0px; margin-top: 0px;">${page.pageStr}</div>
						</td>
					</tr>
				</table>
			</div>
		</div>
	</div>
	<script type="text/javascript" src="${pageContext.request.contextPath}/static/scripts/myjs/syskeyword.js"></script>
</body>
</html>