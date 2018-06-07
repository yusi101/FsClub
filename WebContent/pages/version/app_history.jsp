<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	<title>历史记录</title>
	<link href="${pageContext.request.contextPath}/static/styles/brand/brand.css" rel="stylesheet" />
	<%@ include file="../system/allresources.jsp"%>
</head>

<body>
	<div class="container-fluid">
		<div class="row-fluid">
			<h4 class="title">${pd.title }上传历史</h4>
			<table class="table table-condensed table-bordered table-hover tab">
				<thead>
					<tr>
						<th width="5%">序号</th>
						<th width="20%">名称</th>
						<th width="5%">版本</th>
						<th width="30%">描述</th>
						<th width="5%">状态</th>
						<th width="15%">提交时间</th>
						<th width="20%">操作</th>
					</tr>
				</thead>
				<tbody id="tbody">
					<c:choose>
						<c:when test="${not empty versionInfo }">
							<c:forEach items="${versionInfo}" var="list" varStatus="status">
								<tr>
									<td style="text-align: center">${status.index + 1}</td>
									<td style="text-align: center">${list.NAME }</td>
									<td style="text-align: center">${list.VERSION }</td>
									<td style="text-align: center">${list.REMARK }</td>
									<td style="text-align: center">
									<c:if test="${list.STATE == '0'}">
										<span style="color:#00ff00">有效</span>
									</c:if>
									<c:if test="${list.STATE == '1'}">
										<span style="color:red">无效</span>
									</c:if>
									</td>
									<td style="text-align: center">${list.CREATETIME }</td>
									<td class="dropdown">
										<%-- <input class="btn btn-del" value="删除" name="${list.ID}" maxlength="20" type="button" onclick="updateversion('${list.ID}')" /> --%>
											<a class='btn  btn-danger' title="删除" onclick="checkDelversion('${list.ID}','${list.DOWTYPE}')">
											<i class='fa fa-trash'></i>&nbsp; 激活
										</a>
										<a class='btn btn-edit' title="修改" href="${list.PATH}">
											<i class="fa fa-edit"></i>&nbsp; 下载
										</a>
									</td>
								</tr>	
							</c:forEach>
						</c:when>
						<c:otherwise>
							<tr>
								<td colspan="9" style="color: red; text-align: center;">
									<div align="center">
										<img src="${pageContext.request.contextPath}/static/images/nodata.png" style="width: 100px; margin: 10px auto;">
									</div>
									<div style="margin-bottom: 10px;">小查没有查到数据哦~</div>
								</td>
							</tr>
						</c:otherwise>
					</c:choose>


				</tbody>
			</table>
			<form action="${pageContext.request.contextPath}/VersionController/queryVersionHis" method="post" name="queryBrandInfo" id="queryBrandInfo" class="form-horizontal" style="margin: 10px 0; height: 30px;">
			<div class="position-relative">
				<table style="width: 100%;">
					<tr>
						<td style="vertical-align: top;">
							<div class="pagination" style="float: left; padding-top: 0px; margin-top: 0px;">${page.pageStr}</div>
						</td>
					</tr>
				</table>
			</div>
			</form>
		</div>
	</div>
	<script src="${pageContext.request.contextPath}/static/scripts/myjs/version.js"></script>
</body>
</html>
