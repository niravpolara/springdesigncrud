<!DOCTYPE html>
 <%@page import="java.net.URLDecoder"%>
<%@page import="com.ict.sats.utility.CommonUtility"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

	<div id="footer">
				<div class="">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="col-lg-1 col-md-1 col-sm-12 col-xs-12">
							<p>2016 SATS</p>
							<p class="pull-left">Developed By:</p>
						</div>
						<div class="col-lg-1 col-md-1 col-sm-12 col-xs-12">
							<img src="<%=request.getContextPath() %>/images/ict_full.png">
						</div>
						<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12 text-center">
							<a href="">Terms of Service</a>
							<a href="">Disclaimer</a>
							<a href="">Privacy Policy</a>
						</div>
						<%-- <div class="col-lg-1 col-md-1 col-sm-12 col-xs-12">
							<p>Supported By:</p>
							<p class="pull-left">Infosys Foundation</p>
						</div>
						<div class="col-lg-1 col-md-1 col-sm-12 col-xs-12">
							<img src="<%=request.getContextPath() %>/images/info_logo2.png">
						</div> --%>
					</div>
				</div><div class="clearfix"></div>
			</div>
		<%
	if (CommonUtility.jasper_Path == null) {
	
		
		String p_path=this.getClass().getClassLoader().getResource("").getPath();
		String full_path=URLDecoder.decode(p_path,"UTF-8");
		String[] pathArr=full_path.split("/WEB-INF/classes/");
		String path="";
		if (CommonUtility.getOsName().equals("Linux")) {
			path=pathArr[0]+"//jasper//";
		}else
		if (CommonUtility.getOsName().equals("Windows")) {
			path=pathArr[0]+"\\jasper\\";
		}else{
			
			path=pathArr[0]+"\\jasper\\";
		}
		
		CommonUtility.jasper_Path = path;
		
		
		
		System.out.println("Jasper File Path Set ###### >>>>>>>>>" + path);
		
	}
%>