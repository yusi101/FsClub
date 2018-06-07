<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="fixed"><head><meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%@ include file="system/allresources.jsp"%>
	<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
	<title>四季Club</title>
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/styles/util/bootstrap-3.3.4.css">
	<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/static/styles/util/font-awesome.4.6.0.css">
	<!--     <link rel="stylesheet" href="./animate.css">
        <link rel="stylesheet" href="./toastr.min.css"> -->
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/styles/index/magnific-popup.css">
	<link rel="stylesheet" href="${pageContext.request.contextPath}/static/styles/util/style.css">
</head>

<body>
<div class="wrap">
	<!-- 头部 -->
	<div class="page-body"><div class="page-header">
		<!-- -->
		<div class="leftside-header">
			<div class="logo">
				<a href="${ctp}/main/index" class="on-click">
					<img alt="logo" src="${ctp}/static/images/system/header-logo.jpg" style="height: 50px">
				</a>
			</div>
			<div id="menu-toggle" class="visible-xs toggle-left-sidebar" data-toggle-class="left-sidebar-open" data-target="html">
				<i class="fa fa-bars" aria-label="Toggle sidebar"></i>
			</div>
		</div>
		<!-- -->
		<div class="rightside-header">
			<div class="header-middle"></div>
			<div class="header-section" id="search-headerbox">
				<input type="text" name="search" id="search" placeholder="Search...">
				<i class="fa fa-search search" id="search-icon" aria-hidden="true"></i>
				<div class="header-separator"></div>
			</div>
			<div class="header-section hidden-xs" id="notice-headerbox">

				<div class="notice" id="messages-notice">
					<i class="fa fa-comments-o" aria-hidden="true"></i>
					<span><i class="fa fa-exclamation-circle" aria-hidden="true"></i></span>
					<div class="dropdown-box basic">
						<div class="drop-header ">
							<h3><i class="fa fa-comments-o" aria-hidden="true"></i> Messages</h3>
							<span class="number">120</span>
						</div>
						<div class="drop-content">
							<div class="widget-list list-left-element">
								<ul>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><img alt="John Doe" src="./avatar_1.jpg"></div>
											<div class="text">
												<span class="title">John Doe</span>
												<span class="subtitle">Lorem ipsum dolor sit.</span>
											</div>
										</a>
									</li>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><img alt="Alice Smith" src="./avatar_2.jpg"></div>
											<div class="text">
												<span class="title">Alice Smith</span>
												<span class="subtitle">Deserunt, mollitia?</span>
											</div>
										</a>
									</li>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><img alt="Klaus Wolf" src="./avatar_3.jpg"></div>
											<div class="text">
												<span class="title">Klaus Wolf</span>
												<span class="subtitle">Consectetur adipisicing elit.</span>
											</div>
										</a>
									</li>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><img alt="Sun Li" src="./avatar_4.jpg"></div>
											<div class="text">
												<span class="title">Sun Li</span>
												<span class="subtitle">Tenetur tempora?</span>
											</div>
										</a>
									</li>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><img alt="Sonia Valera" src="./avatar_5.jpg"></div>
											<div class="text">
												<span class="title">Sonia Valera</span>
												<span class="subtitle">Similique ad maxime.</span>
											</div>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="drop-footer">
							<a>See all messages</a>
						</div>
					</div>
				</div>
				<div class="notice" id="alerts-notice">
					<i class="fa fa-bell-o" aria-hidden="true"></i>
					<span>4</span>
					<div class="dropdown-box basic">
						<div class="drop-header">
							<h3><i class="fa fa-bell-o" aria-hidden="true"></i> Notifications</h3>
							<span class="number">4</span>
						</div>
						<div class="drop-content">
							<div class="widget-list list-left-element list-sm">
								<ul>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><i class="fa fa-warning color-warning"></i></div>
											<div class="text">
												<span class="title">8 Bugs</span>
												<span class="subtitle">reported today</span>
											</div>
										</a>
									</li>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><i class="fa fa-flag color-danger"></i></div>
											<div class="text">
												<span class="title">Error</span>
												<span class="subtitle">sevidor C down</span>
											</div>
										</a>
									</li>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><i class="fa fa-cog color-dark"></i></div>
											<div class="text">
												<span class="title">New Configuration</span>
												<span class="subtitle"></span>
											</div>
										</a>
									</li>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><i class="fa fa-tasks color-success"></i></div>
											<div class="text">
												<span class="title">14 Task</span>
												<span class="subtitle">completed</span>
											</div>
										</a>
									</li>
									<li>
										<a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">
											<div class="left-element"><i class="fa fa-envelope color-primary"></i></div>
											<div class="text">
												<span class="title">21 Menssage</span>
												<span class="subtitle"> (see more)</span>
											</div>
										</a>
									</li>
								</ul>
							</div>
						</div>
						<div class="drop-footer">
							<a>See all notifications</a>
						</div>
					</div>
				</div>
				<div class="header-separator"></div>
			</div>
			<div class="header-section" id="user-headerbox">
				<div class="user-header-wrap">
					<div class="user-photo">
						<img src="${ctp}/static/images/system/user-avatar.jpg" alt="Jane Doe">
					</div>
					<div class="user-info">
						<span class="user-name">Jane Doe</span>
						<span class="user-profile">Admin</span>
					</div>
					<i class="fa fa-plus icon-open" aria-hidden="true"></i>
					<i class="fa fa-minus icon-close" aria-hidden="true"></i>
				</div>
				<div class="user-options dropdown-box">
					<div class="drop-content basic">
						<ul>
							<li> <a href="http://www.jq22.com/demo/helsinki-blue201704120046/pages_user-profile.html"><i class="fa fa-user" aria-hidden="true"></i> Profile</a></li>
							<li> <a href="http://www.jq22.com/demo/helsinki-blue201704120046/pages_lock-screen.html"><i class="fa fa-lock" aria-hidden="true"></i> Lock Screen</a></li>
							<li><a href="http://www.jq22.com/demo/helsinki-blue201704120046/#"><i class="fa fa-cog" aria-hidden="true"></i> Configurations</a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="header-separator"></div>
			<div class="header-section">
				<a href="/FsClub"><i class="fa fa-sign-out log-out" aria-hidden="true"></i></a>
			</div>
		</div>
	</div>
		<!-- 侧栏菜单 -->
		<div class="left-sidebar">
			<div class="left-sidebar-header">
				<div class="left-sidebar-title">Navigation</div>
				<div class="left-sidebar-toggle c-hamburger c-hamburger--htla hidden-xs" data-toggle-class="left-sidebar-collapsed" data-target="html">
					<span></span>
				</div>
			</div>
			<div id="left-nav" class="nano has-scrollbar">
				<div class="nano-content" tabindex="0" style="right: -17px;">
					<nav>
						<ul class="nav" id="main-nav">
							<li class="active-item"><a href="${ctp}/main_index"><i class="fa fa-home" aria-hidden="true"></i><span>Dashboard</span></a></li>
							<c:forEach items="${authList }" var="authList">
								<%--<li class="has-child-item close-item">
									<a><i class="fa fa-cubes" aria-hidden="true"></i><span>UI Elements</span></a>
									<ul class="nav child-nav level-1">
										<li><a href="http://www.jq22.com/demo/helsinki-blue201704120046/ui-elements_modals.html">Modals</a></li>
										<li class="has-child-item close-item">
											<a>Notifications</a>
											<ul class="nav child-nav level-2 ">
												<li><a href="http://www.jq22.com/demo/helsinki-blue201704120046/ui-elements_notifications-pnotify.html">PNotify</a></li>
												<li><a href="http://www.jq22.com/demo/helsinki-blue201704120046/ui-elements_notifications-toastr.html">Toastr</a></li>
											</ul>
										</li>
									</ul>
								</li>--%>
								<!-- 显示一级菜单 -->
								<c:if test="${!empty authList.sonMenuList }">
									<li class="has-child-item close-item">
										<a href="javascript:void(0);">
											<c:if test="${!fn:contains(authList.MENU_ICON,'zhirong')}">
												<i class="fa ${authList.MENU_ICON }"></i>
											</c:if>
											<span>${authList.MENU_NAME }</span>
										</a>
										<%--二级菜单--%>
										<ul class="nav child-nav level-1">
											<c:forEach items="${authList.sonMenuList }" var="sonMenuList">
												<c:if test="${!empty sonMenuList.sonMenuList }">
													<li class="has-child-item open-item">
														<a>
															<c:if test="${!fn:contains(sonMenuList.MENU_ICON,'zhirong')}">
																<i class="fa ${sonMenuList.MENU_ICON }"></i>
															</c:if>
															${sonMenuList.MENU_NAME }
														</a>
												<%--三级菜单--%>
														<ul class="nav child-nav level-1">
															<c:forEach items="${sonMenuList.sonMenuList }" var="threeMenuList">
																<c:if test="${!empty threeMenuList.sonMenuList }">
																	<li class="has-child-item close-item">
																		<a href="javascript:void(0);">
																			<c:if test="${!fn:contains(threeMenuList.MENU_ICON,'zhirong')}">
																				<i class="fa ${threeMenuList.MENU_ICON }"></i>
																			</c:if>
																			<span>${threeMenuList.MENU_NAME }</span>
																		</a>
																	</li>
																</c:if>
																<c:if test="${empty threeMenuList.sonMenuList }">
																	<li class="has-child-item close-item">
																		<a href="${pageContext.request.contextPath }${threeMenuList.MENU_URL }" target="iframeContent">
																			<c:if test="${!fn:contains(threeMenuList.MENU_ICON,'zhirong')}">
																				<i class="fa ${threeMenuList.MENU_ICON }"></i>
																			</c:if>
																			<span>${threeMenuList.MENU_NAME }</span>
																		</a>
																	</li>
																</c:if>
															</c:forEach>
														</ul>
													</li>
												</c:if>
												<c:if test="${empty sonMenuList.sonMenuList }">
													<li class="has-child-item open-item">
														<a href="${pageContext.request.contextPath }${sonMenuList.MENU_URL }" target="iframeContent">
															<c:if test="${!fn:contains(sonMenuList.MENU_ICON,'zhirong')}">
																<i class="fa ${sonMenuList.MENU_ICON }"></i>
															</c:if>
															${sonMenuList.MENU_NAME }
														</a>
													</li>
												</c:if>
											</c:forEach>
										</ul>
									</li>
								</c:if>

								<%-- 空菜单--%>
								<c:if test="${empty authList.sonMenuList }">
									<li class="has-child-item close-item">
										<a href="${pageContext.request.contextPath }${authList.MENU_URL }" target="iframeContent">
											<c:if test="${!fn:contains(authList.MENU_ICON,'zhirong')}">
												<i class="fa ${authList.MENU_ICON }"></i>
											</c:if>
											${authList.MENU_NAME }
										</a>
									</li>
								</c:if>
							</c:forEach>
						</ul>
					</nav>
				</div>
				<div class="nano-pane" style="display: block;"><div class="nano-slider" style="height: 427px; transform: translate(0px, 0px);"></div></div></div>
		</div>
		<div class="content">
			<div class="content-header">
				<div class="leftside-content-header">
					<ul class="breadcrumbs">
						<li><i class="fa fa-home" aria-hidden="true"></i><a href="http://www.jq22.com/demo/helsinki-blue201704120046/#">Dashboard</a></li>
					</ul>
				</div>
			</div>
			<iframe src="${pageContext.request.contextPath}/homeController/toHomePage" id="iframeContent" name="iframeContent" frameBorder=0 width="100%" height="1250px"></iframe>
		</div>
		<%--右侧悬浮div--%>
		<div class="right-sidebar">
			<div class="right-sidebar-toggle" data-toggle-class="right-sidebar-opened" data-target="html">
				<i class="fa fa-cog fa-spin" aria-hidden="true"></i>
			</div>
			<div id="right-nav" class="nano has-scrollbar">
				<div class="nano-content" tabindex="0" style="right: -17px;">
					<div class="template-settings">
						<h4 class="text-center">Template Settings</h4>
						<ul class="toggle-settings pv-xlg">
							<li>
								<h6 class="text">Header fixed</h6>
								<label class="switch">
									<input id="header-fixed" type="checkbox" checked="">
									<span class="slider round"></span>
								</label>
							</li>
							<li>
								<h6 class="text">Left sidebar fixed</h6>
								<label class="switch">
									<input id="left-sidebar-fixed" type="checkbox" checked="">
									<span class="slider round"></span>
								</label>
							</li>
							<li>
								<h6 class="text">Left sidebar collapsed</h6>
								<label class="switch">
									<input id="left-sidebar-collapsed" type="checkbox">
									<span class="slider round"></span>
								</label>
							</li>
							<li>
								<h6 class="text">Content header fixed</h6>
								<label class="switch">
									<input id="content-header-fixed" type="checkbox" checked="">
									<span class="slider round"></span>
								</label>
							</li>
						</ul>
						<h4 class="text-center">Template Colors</h4>
						<ul class="toggle-colors">
							<li>
								<a href="http://www.jq22.com/demo/helsinki-blue201704120046/index.html" class="on-click"> <img alt="Helsinki-green" src="./helsinki-green.png"></a>
							</li>
							<li>
								<a href="http://www.jq22.com/demo/helsinki-light/index.html" class="on-click"> <img alt="Helsinki-light" src="./helsinki-light.png"></a>
							</li>
							<li>
								<a href="http://www.jq22.com/demo/helsinki-blue/index.html" class="on-click"> <img alt="Helsinki-blue" src="./helsinki-blue.png"></a>
							</li>
							<li>
								<a href="http://www.jq22.com/demo/helsinki-red/index.html" class="on-click"> <img alt="Helsinki-red" src="./helsinki-red.png"></a>
							</li>
						</ul>
					</div>
				</div>
				<div class="nano-pane" style="display: block;"><div class="nano-slider" style="height: 438px; transform: translate(0px, 0px);"></div></div></div>
		</div>

	</div>
</div>
<script src="${pageContext.request.contextPath}/static/scripts/index/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/static/scripts/index/template-script.min.js"></script>
</body>
</html>