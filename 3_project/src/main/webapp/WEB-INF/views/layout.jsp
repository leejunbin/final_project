<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="description" content="Colo Shop Template">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.css">
<link href="${pageContext.request.contextPath}/resources/plugins/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.theme.default.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/animate.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/main_styles.css">
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/styles/responsive.css">

<!-- ezone템플릿 css -->
<!-- Favicon -->
<link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
		
<!-- all css here -->
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/magnific-popup.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/animate.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/owl.carousel.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/themify-icons.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/pe-icon-7-stroke.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/icofont.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/meanmenu.min.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/jquery-ui.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/bundle.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/style.css">
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/ezone/assets/css/responsive.css">
<script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
<div class="super_container">
	<div id="header">
		<tiles:insertAttribute name="header"/>
	</div>
	<div id="main">
		<tiles:insertAttribute name="main"/>
	</div>
	<div id="footer">
		<tiles:insertAttribute name="footer"/>
	</div>
</div>
</body>
<script src="${pageContext.request.contextPath}/resources/js/jquery-3.2.1.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/styles/bootstrap4/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/styles/bootstrap4/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/Isotope/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/OwlCarousel2-2.2.1/owl.carousel.js"></script>
<script src="${pageContext.request.contextPath}/resources/plugins/easing/easing.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/custom.js"></script>
<!-- ezone 템플릿-->
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/vendor/jquery-1.12.0.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/popper.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/jquery.magnific-popup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/isotope.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/imagesloaded.pkgd.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/jquery.counterup.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/waypoints.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/ajax-mail.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/plugins.js"></script>
<script src="${pageContext.request.contextPath}/resources/ezone/assets/js/main.js"></script>
</html>