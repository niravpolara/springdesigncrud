<%@page import="com.ict.sats.constant.Constant"%>
<%@page import="java.util.Date"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt_rt"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ page contentType="text/html; charset=utf-8" pageEncoding="UTF-8" %>
<c:choose>
<c:when test="${sessionScope.locale.language eq 'kn'}">
<fmt:setBundle basename="resources.sts.SatsHealthLable_kn" var="schoolEduLables" scope="request"></fmt:setBundle>
</c:when>
<c:otherwise>
<fmt:setBundle basename="resources.sts.SatsHealthLable_en" var="schoolEduLables" scope="request"></fmt:setBundle>
</c:otherwise>
</c:choose>
<head>
<link rel="icon" href="../images/favicon.ico" type="image/x-icon" />
<link rel="shortcut icon" href="../images/favicon.ico" type="image/x-icon" />
<%-- 
<link rel="icon" href="<%=request.getContextPath() %>/images/ndmclogo.png" type="image/png" />
<link rel="shortcut icon" href="<%=request.getContextPath() %>/images/ndmclogo.png" type="image/png" />
 --%>
</head>
<script type="text/javascript">
toastr.options = {
		  "closeButton": true,
		  "debug": false,
		  "newestOnTop": true,
		  "progressBar": true,
		  "positionClass": "toast-top-right",
		  "preventDuplicates": false,
		  "onclick": null,
		  "showDuration": "0",
		  "hideDuration": "0",
		  "timeOut": "0",
		  "extendedTimeOut": "1000",
		  "showEasing": "swing",
		  "hideEasing": "linear",
		  "showMethod": "fadeIn",
		  "hideMethod": "fadeOut"
		}
</script>
<script type="text/javascript">
       <%  if((String)request.getAttribute(""+Constant.MSG_PRIORITY+"")!= null ){
    	   String message_type=(String)request.getAttribute(""+Constant.MSG_PRIORITY+"");
    	   String title="";
    	   if((String)request.getAttribute(""+Constant.MSG_TITLE+"")!= null ){
    		   title=(String)request.getAttribute(""+Constant.MSG_TITLE+"");
    	   }
       if((String)request.getAttribute(""+Constant.MSG_NAME+"")!= null ){ 
    	   String message=(String)request.getAttribute(""+Constant.MSG_NAME+"");
      
    	  
    	   if(message_type.equals(Constant.MSG_PRIORITY_SUCCESS)){%>
    	   toastr.success('<%=message%>');
    	  <% }else if(message_type.equals(Constant.MSG_PRIORITY_ERROR)){%>
    	  toastr.error('<%=message%>');
    	<%  }else if(message_type.equals(Constant.MSG_PRIORITY_INFO)){%>
    	 toastr.info('<%=message%>');
    	<%}else if(message_type.equals(Constant.MSG_PRIORITY_WARNING)){%>
    	 toastr.warning('<%=message%>');
    	<%}%>
    	  <%
    	}
    	}  
    	   
    		   
    	 
       
    	  
   
		%>
	</script>   
<!--  <script type="text/javascript">
$(document).ready(function(){
	if('${msg}'){
	$.toaster({ priority : '${msg_priority}', title :'${title}' , message : '${msg}' });
	}
});
</script>  -->


<div id="top_header">
				<div class="">
					<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
						<div class="logo_container col-lg-2 col-md-2 col-sm-12 col-xs-12">
							<a href="#"><img class="img-responsive " src="<%=request.getContextPath() %>/images/ndmclogo.png"></a>
						</div>	
						<div class="col-lg-8 col-md-8 col-sm-12 col-xs-12">
							<h1 class="eng"><fmt:message bundle="${schoolEduLables}" key="STS_HEADER_LABEL_EN"/></h1>
							<h1 class="kn"><fmt:message bundle="${schoolEduLables}" key="STS_HEADER_LABEL_KND"/></h1>
						</div>
						<div class="col-lg-2 col-md-2 col-sm-12 col-xs-12">
							<%-- <h6>Last Updated Date: <fmt:formatDate value="<%=new Date() %>" pattern="dd/MM/yyyy"/></h6>
							<h6>Date: <fmt:formatDate value="<%=new Date() %>" pattern="dd/MM/yyyy"/></h6>
							<h6>time: <fmt:formatDate value="<%=new Date() %>" pattern="hh:mm a"/></h6> --%>
<%-- 							<a href="#"><img class="img-responsive nhmlogo" src="<%=request.getContextPath() %>/images/NHM_logo1.png"></a> --%>
						</div>		
					</div>	<div class="clearfix"></div>		
				</div>
			</div>

			<div id="userlogin">
				<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
					<h4 class="pull-left lgreen">Welcome</h4>
					<h4 id="u_id" class="pull-left"> ${sessionScope.login_name }
					</h4>	
					<h4 class="pull-right logout"><i class="fa fa-power-off" onclick="javascript:logOut();"></i></h4>
				</div><div class="clearfix"></div>
			</div>
			
