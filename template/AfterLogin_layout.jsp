<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>

<html>
<head>

<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/newstyle.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/stsMENU/leftmenu.css">
<link rel="stylesheet"
	href="<%=request.getContextPath() %>/css/stsMENU/redesign.css">
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/ndmchealth.css" />
<link href="<%=request.getContextPath() %>/css/formstyle.css" rel="stylesheet" type="text/css" />
<!-- ------------------------------------------------------------------------------------by pankita -->

<link rel="stylesheet" href="<%=request.getContextPath()%>/css/bootstrap.min.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/toastr/toastr.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/font-awesome.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/fontstyle.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/newstyle.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/formstyle.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/stsMENU/leftmenu.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/stsMENU/redesign.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datepicker/datepicker.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datepicker/main.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datepicker/styles.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/datatable/datatable.css" type="text/css"/>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/timepicker/bootstrap-clockpicker.css" type="text/css"/>

<link href="<%=request.getContextPath()%>/js/select2/select2.css" rel="stylesheet" type="text/css"/>



<!-- ***********js -->
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/popper.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/toastr/toastr.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/main.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/datepicker/datepicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/datatable/datatablejs1.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/highcharts.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/timepicker/bootstrap-clockpicker.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/select2/select2.js"></script>
<script type="text/javascript" src="<%=request.getContextPath() %>/js/allvalidation.js"></script>
<script type="text/javascript" src="<%=request.getContextPath()%>/js/jQuery.print.js"></script>

<script	src="<%=request.getContextPath()%>/js/datepicker/xenon-custom.js" id="script-resource-7"></script>
<script src="<%=request.getContextPath()%>/js/datepicker/jquery.inputmask.bundle.js" id="script-resource-8"></script>
<!-- ------------------------------------------------------------------------------------by pankita -->

<title><tiles:insertAttribute name="title" /></title>
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ndmclogo.png" type="image/png">


</head>
<body>
	<div class="container-fluid">
		<div class="row">
			<tiles:insertAttribute name="header" />
			<div id="total_content">
				<div class="col-lg-2 col-md-3 col-sm-12 col-xs-12">
					<tiles:insertAttribute name="menu" /><div class="clearfix"></div>
				</div>
				
				<div class="col-lg-10 col-md-9 col-sm-12 col-xs-12 div_min_height">
					<tiles:insertAttribute name="body" /><div class="clearfix"></div>
				</div><div class="clearfix"></div>
			</div>
			<tiles:insertAttribute name="footer" />
		</div>
	</div>
	</body>
</html>