<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/newstyle.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/stsMENU/leftmenu.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/stsMENU/redesign.css">
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/ndmchealth.css" />
<link href="<%=request.getContextPath()%>/css/formstyle.css"
	rel="stylesheet" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/bootstrap.min.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/toastr/toastr.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/font-awesome.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/fontstyle.css" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/newstyle.css" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/formstyle.css" type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/stsMENU/leftmenu.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/stsMENU/redesign.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/datepicker/datepicker.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/datepicker/main.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/datepicker/styles.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/datatable/datatable.css"
	type="text/css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/timepicker/bootstrap-clockpicker.css"
	type="text/css" />

<link href="<%=request.getContextPath()%>/js/select2/select2.css"
	rel="stylesheet" type="text/css" />



<!-- ***********js -->
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jquery.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/popper.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/toastr/toastr.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/datepicker/main.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/datepicker/datepicker.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/datatable/datatablejs1.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/highcharts.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/timepicker/bootstrap-clockpicker.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/select2/select2.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/allvalidation.js"></script>
<script type="text/javascript"
	src="<%=request.getContextPath()%>/js/jQuery.print.js"></script>

<script
	src="<%=request.getContextPath()%>/js/datepicker/xenon-custom.js"
	id="script-resource-7"></script>
<script
	src="<%=request.getContextPath()%>/js/datepicker/jquery.inputmask.bundle.js"
	id="script-resource-8"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>CUSTOMER MASTER</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="../css/jtable.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/font-awesome.css">
<link href="../css/jquery-ui.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="../css/style.css">

<script type="text/javascript" src="../js/jquery-ui.js"></script>
<script type="text/javascript" src="../js/jquery.jtable.js"></script>
<script type="text/javascript" src="../js/allvalidation.js"></script>
<script type="text/javascript" src="../js/common.js"></script>
<script type="text/javascript">
	function hideError(element) {
		document.getElementById(element.id + "3").style.display = "none";
	}
	function leasechange(input) {
		var a = input.value;
		if (a == "1") {
			document.getElementById("date_of_lease").disabled = false;
			document.getElementById("no_of_year_lease").disabled = false;
		} else {
			document.getElementById("date_of_lease").value = "";
			document.getElementById("no_of_year_lease").value = "";
			document.getElementById("date_of_lease").disabled = true;
			document.getElementById("no_of_year_lease").disabled = true;
		}
	}
</script>
<script type="text/javascript">
	$(document).ready(function() {
		$('#d_c_table').DataTable();
	});
</script>
</head>
<body>
	<form:form name="schoolForm" method="post" id="schoolFormId"
		modelAttribute="GeneralDTO" enctype="multipart/form-data">
		<div class="container-fluid">
			<div class="row">
				<!-- ---------------------------------------------------------------------------------------------------------------------------top header-->

				<div id="topheader" class="container-fluid relative">
					<div class="row">
						<!-- 							<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12"> -->
						<!-- 								<div class="sats text-center text-uppercase"> -->
						<!-- 									<h1>SHIKSHANA<br/> KIRANA</h1> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<!-- 							<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12"> -->
						<!-- 								<div class="logo"> -->
						<!-- 									<a href="../front/loadindexhome.htm"><img class="img-responsive"  src="../images/logo.png"></a> -->
						<!-- 								</div> -->
						<!-- 							</div> -->
						<div class="col-lg-5 col-md-5 col-sm-12 col-xs-12">
							<div class="sats text-center text-uppercase">
								<h1 class="eng">Customer Registration</h1>
							</div>
						</div>
					</div>
				</div>

				<!-- ---------------------------------------------------------------------------------------------------------------------------top header-->
				<!-- ---------------------------------------------------------------------------------------------------------------------------menu-->





				<div id="top_header">
					<div class="">
						<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
							<div class="logo_container col-lg-2 col-md-2 col-sm-12 col-xs-12">
								<a href="#"><img class="img-responsive "
									src="<%=request.getContextPath()%>/images/ndmclogo.png"></a>
							</div>
						</div>
						<h4>
							<nav id="nav_bar" class="navbar">
							<div class="container">
								<div class="navbar-header">
									<button type="button" class="navbar-toggle"
										data-toggle="collapse" data-target="#myNavbar">
										<i class="fa fa-bars" aria-hidden="true"></i>
									</button>
								</div>
								<div class="collapse navbar-collapse" id="myNavbar">
									<ul class="nav navbar-nav ">
										<li class=""><a href="../front/loadindexhome.htm">Home</a></li>
										<li><a href="#achievement">Achievement</a></li>
										<li><a href="#gallery">Gallery</a></li>
										<li><a href="#news">Notification</a></li>
										<li><a href="#links">Important Links</a></li>
										<li><a href="#contact">Contact</a></li>
										<!-- 					        <li><a href="http://61.16.139.3/STS/">Dept. Login</a></li> -->
										<li><a href="../front/loadKnowMySchool.htm">Know My
												School</a></li>
										<!-- 					        <li><a href="../front/loadDashboard.htm">Dashboard</a></li> -->
										<li><a href="../front/loadLoginPage.htm">SATS Login</a></li>
										<li><a href="../front/newSchoolInstruction.htm">Instruction</a></li>
									</ul>
								</div>
							</div>
							</nav>
						</h4>
					</div>
				</div>

				<div id="userlogin">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<h4 class="pull-left lgreen">Welcome</h4>

						<h4 id="u_id" class="pull-left"></h4>
						<h4 class="pull-right logout">
							<i onclick="logOut();"> <a href="#"><img
									class="img-responsive "
									src="<%=request.getContextPath()%>/images/icon_check2.png"></a></i>
						</h4>
					</div>
					<div class="clearfix"></div>
				</div>




				<!-- ---------------------------------------------------------------------------------------------------------------------------/menu-->
				<!-- ---------------------------------------------------------------------------------------------------------------------------content-->
				<section id=""> <!-- <div class="x_content">
					<div class="container"> -->
				<div class="overlay-white"></div>
				<div class="">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12" align="center">
						<h3>
							<font size="3" color="blue">Apply for new Registration</font>
						</h3>
					</div>
				</div>
				<br />
				<!-- 					<div class=""> --> <!-- 						<div class="col-lg-8 col-md-8 col-sm-8 col-xs-12"> -->
				<!-- 							<h3><font size="3">I. Fullname</font> </h3>  --> <!-- 						</div> -->
				<!-- 					</div><br/> -->

				<div class="col-lg-12 col-md-12  col-sm-12 col-xs-12">
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Fullname Of Employee :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<input type="text" id="searchID" name="customermaster.user_name"
								class="form-control" style="text-transform: uppercase;"
								onkeypress="return alphabetsAndWhiteSpaceOnlyn(event,this);"
								onblur="hideError(this);" onclick="hideError(this);"
								onchange="hideError(this);" maxlength="100" /> <span><font
								color="red" size="2"> (in Capital Letters)</font> </span> <span
								id="searchID3" style="color: Red; display: none;">You
								Can't Leave this Empty</span>
						</div>

						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Pincode :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<input type="text" id="pinId" name="customermaster."
								class="form-control" maxlength="6"
								onkeypress="return numbersonly(event);"
								onchange="hideError(this);pinValidation(this);"
								onblur="hideError(this);" onclick="hideError(this);" /> <span
								id="pinId3" style="color: Red; display: none;">You Can't
								Leave this Empty</span>
						</div>

					</div>

					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Registration type :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">

							<select class="rel_class_form form-control" id="sch_type_id" name="user_type">
								<option value="1">Admin</option>
								<option value="2">Employee</option>
							</select>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Telephone Number :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<input type="text" id="telephone_Id"
								name="appdtl.applicant_mobile" class="form-control"
								onkeypress="return isNumber(event)" maxlength="10"
								onchange="hideError(this);mobilenoValidation(this);"
								onblur="hideError(this);" onclick="hideError(this);" /> <span
								id="telephone_Id3" style="color: Red; display: none;">You
								Can't Leave this Empty</span>
						</div>

					</div>
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Address :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<textarea class="form-control" id="exampleFormControlTextarea1"
								rows="3" name="newSchoolMst.school_address"
								onchange="hideError(this);" onblur="hideError(this);"
								onclick="hideError(this);" maxlength="200"></textarea>
							<span><font color="red" size="2"> (Max 200
									character)</font> </span> <span id="exampleFormControlTextarea13"
								style="color: Red; display: none;">You Can't Leave this
								Empty</span>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								LandLine Number :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<input type="text" id="telephone_Id"
								name="appdtl.applicant_mobile" class="form-control"
								onkeypress="return isNumber(event)" maxlength="10"
								onchange="hideError(this);mobilenoValidation(this);"
								onblur="hideError(this);" onclick="hideError(this);" /> <span
								id="telephone_Id3" style="color: Red; display: none;">You
								Can't Leave this Empty</span>
						</div>

					</div>
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Email Address :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<input type="text" id="emailSchoolId"
								name="newSchoolMst.school_email_id" class="form-control"
								onchange="isEmail(this);hideError(this);"
								onblur="hideError(this);" onclick="hideError(this);" /> <span
								id="emailSchoolId3" style="color: Red; display: none;">You
								Can't Leave this Empty</span>
						</div>
						<!-- <div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Password :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<input type="text" id="pinId" name="newSchoolMst.pincode"
								class="form-control" maxlength="6"
								onkeypress="return numbersonly(event);"
								onchange="hideError(this);pinValidation(this);"
								onblur="hideError(this);" onclick="hideError(this);" /> <span
								id="pinId3" style="color: Red; display: none;">You Can't
								Leave this Empty</span>
						</div> -->
					</div>
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								 Password :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<input type="text" id="pinId" name="newSchoolMst.pincode"
								class="form-control" maxlength="6"
								onkeypress="return numbersonly(event);"
								onchange="hideError(this);pinValidation(this);"
								onblur="hideError(this);" onclick="hideError(this);" /> <span
								id="pinId3" style="color: Red; display: none;">You Can't
								Leave this Empty</span>
						</div>
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Confirm Password :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<input type="text" id="pinId" name="newSchoolMst.pincode"
								class="form-control" maxlength="6"
								onkeypress="return numbersonly(event);"
								onchange="hideError(this);pinValidation(this);"
								onblur="hideError(this);" onclick="hideError(this);" /> <span
								id="pinId3" style="color: Red; display: none;">You Can't
								Leave this Empty</span>
						</div> 
					</div>
					<div class="row">
						<div class="col-lg-3 col-md-3 col-sm-3 col-xs-12">
							<h4>
								Gender :<span style="color: red">*</span>
							</h4>
						</div>
						<div class="col-lg-3 col-md-3  col-sm-3 col-xs-12">
							<select class="rel_class_form form-control" id="sch_type_id"
								name="newSchoolMst.school_type">
								<option value="m">Male</option>
								<option value="f">Female</option>
							</select> </span> <span id="exampleFormControlTextarea13"
								style="color: Red; display: none;">You Can't Leave this
								Empty</span>
						</div>
					</div>
<div class="row">
					<div class="col-lg-12 col-md-12  col-sm-12 col-xs-12">
						<input type="checkbox" name="chk_box" id="chk_id">&nbsp;<font
							color="blue" size="2">I/We hereby declare that the above
							information given is true and correct to the best of my/our
							knowledge</font>
					</div>
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 "
						align="center">
						<a href="#" class="btn btn-success btn-lg" id="btn_submit"
							onclick="checkValidation();">Submit</a>
					</div>
					</div>
				</div>
				</section>
			</div>
		</div>

		<br />
		<br />
		<br />
		<br />
		<br />
		<section class="p-0" id="footer">
		<div class="social">
			<div class="col-lg-6 col-md-6 col-sm-4 col-xs-4">
				<p class="pull-right">copy rights</p>
			</div>
		</div>
		<div class="clearfix"></div>
		</section>
	</form:form>
</body>
<script type="text/javascript">
	function getfileNameDoc(element) {
		if (element.value != null && element.value != "") {
			$('#' + 'temp_' + element.id).val(element.value);
		}
	}
	function checkFile_uploadDoc(fieldObj) {
		var FileName = fieldObj.value;
		var FileExt = FileName.substr(FileName.lastIndexOf('.') + 1);
		var FileSize = fieldObj.files[0].size;
		var FileSizeMB = (FileSize / 10485760).toFixed(2);

		if ((FileExt == "jpg" && FileSize < 1024000)
				|| (FileExt == "jpeg" && FileSize < 10240000)
				|| (FileExt == "pdf" && FileSize < 10240000)
				|| (FileExt == "png" && FileSize < 10240000)
				|| (FileExt == "GIF" && FileSize < 10240000)
				|| (FileExt == "doc" && FileSize < 102400000)) {
			return true;
		} else {
			/* var error = "File type : "+ FileExt+"\n\n";
			error += "Size: " + FileSizeMB + " MB \n\n";
			error += "Please make sure your file is in pdf or doc format and less than 50KB.\n\n";
			 */
			var error = "Please make sure your Photo/Document is in JPEG/JPG/PDF/PNG/DOC format";
			alert(error);
			document.getElementById(fieldObj.id).value = "";

			return false;
		}
	}
	function checkValidation() {
		var flag = true;
		var test = document.getElementsByTagName("input");
		var tarea = document.getElementsByTagName("textarea");
		var test1 = document.getElementsByTagName("select");
		for ( var i = 0; i < test.length; i++) {
			if (test[i].value == "" & test[i].type == "text"
					& test[i].name != "trnMember.member_name"
					& test[i].name != "trnMember.member_position"
					& test[i].name != "trnMember.member_age"
					& test[i].name != "trnMember.member_address"
					& test[i].name != "trnMember.member_id_proof_no"
					& test[i].name != "trnMember.member_mobile"
					& test[i].name != "trnMember.member_emailid"
					& test[i].name != "teacherDtl.teacher_name"
					& test[i].name != "teacherDtl.teacher_qualification"
					& test[i].name != "teacherDtl.teacher_address"
					& test[i].name != "teacherDtl.teacher_id_proof_no"
					& test[i].name != "teacherDtl.teacher_mobile"
					& test[i].name != "teacherDtl.teacher_emailid"
					& test[i].id != "email_Id" & test[i].id != "no_of_class_Id"
					& test[i].id != "no_of_year_lease"
					& test[i].id != "date_of_lease") {
				document.getElementById(test[i].id + "3").style.display = "block";
				flag = false;
			}
		}
		for ( var i = 0; i < tarea.length; i++) {
			if (tarea[i].value == "") {
				document.getElementById(tarea[i].id + "3").style.display = "block";
				flag = false;
			}
		}
		for ( var j = 0; j < test1.length; j++) {
			//alert(test1[j].name+"\nVALUE:"+test1[j].value);
			if ((test1[j].value == "select" || (test1[j].value == "-1" || test1[j].value == "1"))
					& test1[j].name != "trnMember.member_gender"
					& test1[j].name != "teacherDtl.teacher_gender"
					& test1[j].id != "lease_yn"
					& test1[j].id != "sch_type_id"
					& test1[j].id != "building_sketch_yn"
					& test1[j].id != "emer_no_display_yn"
					& test1[j].id != "bank_name"
					& test1[j].id != "corr_gender_id"
					& test1[j].id != "typeOfOrgId") {

				document.getElementById(test1[j].id + "3").style.display = "block";
				flag = false;
			}
		}
		if (document.getElementById("building_sketch_yn").value == "-1") {
			document.getElementById("building_sketch_yn3").style.display = "block";
			flag = false;
		}
		if (document.getElementById("emer_no_display_yn").value == "-1") {
			document.getElementById("emer_no_display_yn3").style.display = "block";
			flag = false;
		}
		if (document.getElementById("bank_name").value == "-1") {
			document.getElementById("bank_name3").style.display = "block";
			flag = false;
		}
		if (document.getElementById("corr_gender_id").value == "-1") {
			document.getElementById("corr_gender_id3").style.display = "block";
			flag = false;
		}
		if (document.getElementById("typeOfOrgId").value == "-1") {
			document.getElementById("typeOfOrgId3").style.display = "block";
			flag = false;
		}
		var trust_certi = document.getElementById("trust_reg_certi").value;
		var lease_agree = document.getElementById("lease_agree_org").value;
		var build_sketch = document.getElementById("building_sketch").value;
		var dd_copy = document.getElementById("dd_copy").value;
		if (trust_certi == "") {
			document.getElementById("trust_reg_certi3").style.display = "block";
			flag = false;
		}
		if (lease_agree == "") {
			document.getElementById("lease_agree_org3").style.display = "block";
			flag = false;
		}
		if (build_sketch == "") {
			document.getElementById("building_sketch3").style.display = "block";
			flag = false;
		}
		if (dd_copy == "") {
			document.getElementById("dd_copy3").style.display = "block";
			flag = false;
		}
		if (!document.getElementById("chk_id").checked) {
			alert("checkbox should be selected");
			flag = false;
		}
		if (flag) {
			submitData();
		}
	}
	function submitData() {
		document.schoolForm.action = "../front/saveNewSchoolInfo.htm";
		document.schoolForm.submit();
	}
</script>
<script type="text/javascript">
	function checkAddRowValidation() {
		var flg1 = true;
		if (flg1) {
			addRow('tbodyID');
		}
	}

	var rowCount = 1;
	var nRow = 1;
	function addRow(t_id) {

		var table = document.getElementById(t_id);
		var row = document.createElement("TR");
		row.setAttribute('id', 'n' + nRow);

		// member name
		var td2 = document.createElement("TD");
		td2.id = "aa" + nRow;
		var element1 = document.createElement("input");
		element1.type = "text";
		element1.name = "trnMember.member_name";
		element1.className = "form-control";
		element1.id = "a" + nRow;
		td2.appendChild(element1);

		// postion name
		var td3 = document.createElement("TD");
		td3.id = "bb" + nRow;
		var element2 = document.createElement("input");
		element2.type = "text";
		element2.name = "trnMember.member_position";
		element2.className = "form-control";
		element2.id = "b" + nRow;
		td3.appendChild(element2);

		// age
		var td4 = document.createElement("TD");
		td4.id = "cc" + nRow;
		var element3 = document.createElement("input");
		element3.type = "text";
		element3.name = "trnMember.member_age";
		element3.className = "form-control";
		element3.setAttribute("maxlength", "2");
		element3.setAttribute("onkeypress", "return numbersonly(event);");
		//element3.addEventListener('keyup',function(){if(isNaN(this.value)){this.value="";}},false);
		element3.id = "c" + nRow;
		td4.appendChild(element3);

		// gender
		var td5 = document.createElement("TD");
		td5.id = "dd" + nRow;
		var element5 = document.createElement("SELECT");
		element5.name = "trnMember.member_gender";
		element5.className = "rel_class_form form-control";
		element5.id = "d" + nRow;

		var o5 = document.createElement("OPTION");
		o5.value = "";
		o5.appendChild(document.createTextNode("--SELECT--"));
		element5.appendChild(o5);

		var o6 = document.createElement("OPTION");
		o6.value = "1";
		o6.appendChild(document.createTextNode("Male"));
		element5.appendChild(o6);

		var o52 = document.createElement("OPTION");
		o52.value = "2";
		o52.appendChild(document.createTextNode("Female"));
		element5.appendChild(o52);
		td5.appendChild(element5);

		// address_name
		var td6 = document.createElement("TD");
		td6.id = "ee" + nRow;
		var element6 = document.createElement("input");
		element6.type = "text";
		element6.name = "trnMember.member_address";
		element6.className = "form-control";
		element6.id = "e" + nRow;
		td6.appendChild(element6);

		// proof_name
		var td7 = document.createElement("TD");
		td7.id = "ff" + nRow;
		var element7 = document.createElement("input");
		element7.type = "text";
		element7.name = "trnMember.member_id_proof_no";
		element7.className = "form-control";
		element7.id = "f" + nRow;
		element7.setAttribute("maxlength", "45");
		td7.appendChild(element7);

		// mobile_name
		var td8 = document.createElement("TD");
		td8.id = "gg" + nRow;
		var element8 = document.createElement("input");
		element8.type = "text";
		element8.name = "trnMember.member_mobile";
		element8.className = "form-control";
		element8.setAttribute("onkeypress", "return numbersonly(event);");
		element8.setAttribute("onchange", "mobilenoValidation(this);");
		element8.id = "g" + nRow;
		element8.setAttribute("maxlength", "10");
		td8.appendChild(element8);

		// email_name
		var td9 = document.createElement("TD");
		td9.id = "hh" + nRow;
		var element9 = document.createElement("input");
		element9.type = "text";
		element9.name = "trnMember.member_emailid";
		element9.className = "form-control";
		element9.setAttribute("onchange", "isEmail(this);");
		element9.id = "h" + nRow;
		td9.appendChild(element9);

		// remove button

		var td10 = document.createElement("TD");
		td10.setAttribute("align", "center");
		var element10 = document.createElement("A");

		td10.setAttribute("id", nRow);
		var t = document.createTextNode("delete");

		element10.setAttribute('href', 'javascript:deleteItem(\'n' + nRow
				+ '\');');
		element10.className = "btn btn-danger";
		element10.appendChild(t);
		td10.appendChild(element10);

		row.appendChild(td2);
		row.appendChild(td3);
		row.appendChild(td4);
		row.appendChild(td5);
		row.appendChild(td6);
		row.appendChild(td7);
		row.appendChild(td8);
		row.appendChild(td9);
		row.appendChild(td10);
		table.appendChild(row);

		rowCount++;
		nRow++;

	}

	function deleteItem(id) {
		var table = document.getElementById("tbodyID");
		/* var r=document.getElementById(""); */
		table.removeChild(document.getElementById(id));
		rowCount--;
		/* table.removeAttributeNode(); */

	}

	// teacher add row
	function AddRowTeacher() {
		var flg1 = true;
		if (flg1) {
			addRowTec('tbodyID1');
		}
	}

	var rowCount1 = 1;
	var nRow1 = 1;
	function addRowTec(t_id) {

		var table = document.getElementById(t_id);
		var row = document.createElement("TR");
		row.setAttribute('id', 'n' + nRow1);

		//teacher_name
		var td2 = document.createElement("TD");
		td2.id = "1aa" + nRow1;
		var element1 = document.createElement("input");
		element1.type = "text";
		element1.name = "teacherDtl.teacher_name";
		element1.className = "form-control";
		element1.id = "1a" + nRow1;
		td2.appendChild(element1);

		// position name
		var td3 = document.createElement("TD");
		td3.id = "1bb" + nRow1;
		var element2 = document.createElement("input");
		element2.type = "text";
		element2.name = "teacherDtl.teacher_qualification";
		element2.className = "form-control";
		element2.setAttribute("maxlength", "45");
		element2.id = "1b" + nRow1;
		td3.appendChild(element2);

		// gender
		var td5 = document.createElement("TD");
		td5.id = "1dd" + nRow1;
		var element5 = document.createElement("SELECT");
		element5.name = "teacherDtl.teacher_gender";
		element5.className = "rel_class_form form-control";
		element5.id = "1d" + nRow1;

		var o5 = document.createElement("OPTION");
		o5.value = "";
		o5.appendChild(document.createTextNode("--SELECT--"));
		element5.appendChild(o5);

		var o6 = document.createElement("OPTION");
		o6.value = "1";
		o6.appendChild(document.createTextNode("Male"));
		element5.appendChild(o6);

		var o52 = document.createElement("OPTION");
		o52.value = "2";
		o52.appendChild(document.createTextNode("Female"));
		element5.appendChild(o52);
		td5.appendChild(element5);

		// address_name
		var td6 = document.createElement("TD");
		td6.id = "1ee" + nRow1;
		var element6 = document.createElement("input");
		element6.type = "text";
		element6.name = "teacherDtl.teacher_address";
		element6.className = "form-control";
		element6.id = "1e" + nRow1;
		td6.appendChild(element6);

		// proof_name
		var td7 = document.createElement("TD");
		td7.id = "1ff" + nRow1;
		var element7 = document.createElement("input");
		element7.type = "text";
		element7.name = "teacherDtl.teacher_id_proof_no";
		element7.className = "form-control";
		element7.setAttribute("maxlength", "45");
		element7.id = "1f" + nRow1;
		td7.appendChild(element7);

		// mobile_name
		var td8 = document.createElement("TD");
		td8.id = "1gg" + nRow1;
		var element8 = document.createElement("input");
		element8.type = "text";
		element8.name = "teacherDtl.teacher_mobile";
		element8.className = "form-control";
		element8.setAttribute("maxlength", "10");
		element8.setAttribute("onkeypress", "return numbersonly(event);");
		element8.setAttribute("onchange", "mobilenoValidation(this);");
		element8.id = "1g" + nRow1;
		td8.appendChild(element8);

		// email_name
		var td9 = document.createElement("TD");
		td9.id = "1hh" + nRow1;
		var element9 = document.createElement("input");
		element9.type = "text";
		element9.name = "teacherDtl.teacher_emailid";
		element9.className = "form-control";
		element9.setAttribute("onchange", "isEmail(this);");
		element9.id = "1h" + nRow1;
		td9.appendChild(element9);

		// remove button

		var td10 = document.createElement("TD");
		td10.setAttribute("align", "center");
		var element10 = document.createElement("A");

		td10.setAttribute("id1", nRow1);
		var t = document.createTextNode("delete");

		element10.setAttribute('href', 'javascript:deleteTec(\'n' + nRow1
				+ '\');');
		element10.className = "btn btn-danger";
		element10.appendChild(t);
		td10.appendChild(element10);

		row.appendChild(td2);
		row.appendChild(td3);

		row.appendChild(td5);
		row.appendChild(td6);
		row.appendChild(td7);
		row.appendChild(td8);
		row.appendChild(td9);
		row.appendChild(td10);
		table.appendChild(row);

		rowCount1++;
		nRow1++;

	}

	function deleteTec(id) {
		var table = document.getElementById("tbodyID1");
		/* var r=document.getElementById(""); */
		table.removeChild(document.getElementById(id));
		rowCount1--;
		/* table.removeAttributeNode(); */

	}
</script>
</html>