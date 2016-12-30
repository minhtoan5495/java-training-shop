<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<script src="//code.jquery.com/jquery-1.9.1.js"></script>
<script src="//ajax.aspnetcdn.com/ajax/jquery.validate/1.9/jquery.validate.min.js"></script>
<!--header start-->
<!DOCTYPE html>
<header class="header white-bg">
    <div class="sidebar-toggle-box">
        <div data-original-title="Toggle Navigation" data-placement="right"
             class="icon-reorder tooltips"></div>
    </div>
    <!--logo start-->
    <a href="${contextPath }/admin/user" class="logo">Shop<span>cdio4</span></a>
    <!--logo end-->
    <div class="top-nav ">
        <ul class="nav pull-right top-menu">
            <li><input type="text" class="form-control search"
                       placeholder="Search"></li>
            <!-- user login dropdown start-->
            <li class="dropdown">
                <a data-toggle="dropdown"
                   class="dropdown-toggle" href="#">
                    <img alt="" src="${contextPath}/resource/view/admin/themes/img/avatar1_small.jpg">
                    <span class="username">
					Hello, ${pageContext.request.userPrincipal.name}</span> <b class="caret"></b>
                </a>
                <ul class="dropdown-menu extended logout">
                    <li><a href="#"><i class=" icon-suitcase"></i>Profile</a></li>
                    <li><a href="#"><i class="icon-cog"></i> Settings</a></li>
                    <li><a href="#"><i class="icon-bell-alt"></i> Notification</a></li>
                        <li><a href="${contextPath }/logout"><i class="icon-key"></i> Log Out</a></li>
                </ul>
            </li>
            <!-- user login dropdown end -->
        </ul>
    </div>
</header>
<!--header end-->