<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="security"	uri="http://www.springframework.org/security/tags"%>
<?xml version="1.0" encoding="UTF-8" ?>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html class="no-js" lang="">
    
<head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Inicio</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <!-- favicon -->        
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/img/favicon.ico">
        <!-- Google Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Lato:400,700' rel='stylesheet' type='text/css'>
        <link href='https://fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
        <!-- master CSS
		============================================ -->			
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/master.css">

        <script src="${pageContext.request.contextPath}/resources/js/vendor/modernizr-2.8.3.min.js"></script>
         <script src="${pageContext.request.contextPath}/resources/js/vendor/jquery-1.12.0.min.js"></script>
        <!-- bootstrap js -->
        <script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
        <!-- owl.carousel js -->
        <script src="${pageContext.request.contextPath}/resources/js/owl.carousel.min.js"></script>
        <!-- jquery-ui js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery-ui.min.js"></script>
        <!-- wow js -->
        <script src="${pageContext.request.contextPath}/resources/js/wow.min.js"></script>
        <!-- venobox js -->
        <script src="${pageContext.request.contextPath}/resources/js/venobox.min.js"></script>
        <!-- mixitup js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.mixitup.js"></script>   
        <!-- elevateZoom js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.elevateZoom-3.0.8.min.js"></script>
        <!-- nivo-slider js -->
        <script src="${pageContext.request.contextPath}/resources/lib/js/jquery.nivo.slider.js" type="text/javascript"></script>
        <script src="${pageContext.request.contextPath}/resources/lib/home.js" type="text/javascript"></script>   
        <!-- meanmenu js -->
        <script src="${pageContext.request.contextPath}/resources/js/jquery.meanmenu.js"></script>
        <!-- plugins js -->
        <script src="${pageContext.request.contextPath}/resources/js/plugins.js"></script>
        <!-- main js -->
        <script src="${pageContext.request.contextPath}/resources/js/main.js"></script>
    </head>
		<tiles:insertAttribute name="header" />
		
		 <body>
    	<tiles:insertAttribute name="body" />
    	<tiles:insertAttribute name="footer" />
        </body>
</html>