<%@ page language="java" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="leftbar leftbar-close clearfix">
	<div class="admin-info clearfix">
		<div class="admin-thumb">
			<i class="icon-user"></i>
		</div>
		<div class="admin-meta">
			<ul>
				<li class="admin-username" style="margin-top: 10px;">欢迎你 ${sessionScope.adminuser.name}</li>
				<li><a href="${pageContext.request.contextPath}/admin/loginout">
				<i class="icon-lock"></i> 退出</a></li>
			</ul>
		</div>
	</div>

	<div class="left-nav clearfix">
		<div class="left-primary-nav">
			<ul id="myTab">
				<li  class="active"><a href="#dailyreport" class="icon-calendar" data-original-title="订单"></a></li>
			</ul>
		</div>
		<div class="responsive-leftbar">
			<i class="icon-list"></i>
		</div>
		<div class="left-secondary-nav tab-content" >
			<div class="tab-pane active dailyreport" id="dailyreport">
				<ul id="nav" class="accordion-nav" >
				<c:if test="${sessionScope.adminuser.username=='admin1'||sessionScope.adminuser.username=='admin2'}">
					<li><a href="${pageContext.request.contextPath}/admin/user/index"><i class="icon-pencil"></i>教师管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/work/index"><i class="icon-pencil"></i>上课记录管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/work/create"><i class="icon-pencil"></i>上课记录单录入</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/msgbox/index"><i class="icon-pencil"></i>评论管理</a></li>
					<li><a href="${pageContext.request.contextPath}/admin/report/index"><i class="icon-pencil"></i>评价管理</a></li>
				</c:if>
				<c:if test="${sessionScope.adminuser.username!='admin1'&&sessionScope.adminuser.username!='admin2'}">
					<li><a href="${pageContext.request.contextPath}/admin/mywork/index"><i class="icon-pencil"></i>我的考评</a></li>
				
				</c:if>
				</ul>
			</div>
		</div>
	</div>
</div>