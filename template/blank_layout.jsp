<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8" session="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/bootstrap.min.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/newstyle.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/stsMENU/leftmenu.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/stsMENU/redesign.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/font-awesome.css">
	<link href="<%=request.getContextPath() %>/css/datatable/datatable.css" rel="stylesheet"
	type="text/css" />
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/ndmchealth.css" />
<link href="<%=request.getContextPath() %>/css/formstyle.css" rel="stylesheet" type="text/css" />



<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/popper.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>

<script type="text/javascript" src="<%=request.getContextPath() %>/js/datatable/datatablejs1.js"></script>

<link rel="icon" href="../images/logo.ico" type="image/x-icon" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="shortcut icon" href="../images/logo.ico" type="image/x-icon" />

<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ndmclogo.png" type="image/png">

<title><tiles:insertAttribute name="title" /></title>



</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<div id="total_content">
				
				
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<tiles:insertAttribute name="body" /><div class="clearfix"></div>
				</div><div class="clearfix"></div>
			</div>
		</div>
	</div>
	</body>
</html>