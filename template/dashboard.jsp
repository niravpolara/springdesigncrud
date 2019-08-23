<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
	<%@page import="oracle.sql.CLOB"%>
<%@page import="java.sql.Clob"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

<title></title>

</head>
<body >
<c:if test="${not empty requestScope.contentList}">
	<div class="health_home_div">
		<h2 class="align_center" style="text-align:${requestScope.contentList[0].content_h_align}"><!-- Background and Operational Approach -->${requestScope.contentList[0].content_title}</h2>
		<div class="div_padding10">
		<!-- <p class="health_p">Most newborns are born healthy, but some are born early or with
			a low birth weight or with a defect at birth and have special health
			care needs and hence require to be admitted in special newborn care
			units. Out of every 100 babies born in this country annually, 6 to 7
			have a birth defect. In Indian context, this would translate to 1.7
			million birth defects annually and would account for 9.6% of all
			newborn deaths1. Various nutritional de-ficiencies affecting the
			preschool children range from 4 to 70%. Development delays are common
			in early childhood affecting at least 10% of the children.</p>
			
			<p class="health_p">Such children are not at a higher risk of death during infancy or under-five period but also suffer from periodic childhood diseases,
			 deficiencies or development disabilities. Both medical & surgical interventions are required along with early stimulation to optimize the 
			 growth of such children so that they can reach their full genetic potential.</p>
			 
			 <p class="health_p">Different mechanisms have been development to reach the target groups of children for health screening of 4Ds-</p>
			  <p class="health_p">1. For new born:- Facility based screening at public health facilities, by existing health manpower including ANMs, Staff Nurses and Medical 
			  Officers at designated delivery points. - Community based screening at home after 48 hours of birth and till 6 weeks of age during home
			   visitation by ASHAs,as a part of HBNC package.
			  </p>
			   <p class="health_p">2. For children 6 weeks to 6 years:- Anganwadi center based screening at least twice a year by the dedicated Mobile Health Teams under
			    RBSK.</p> -->
			    	<c:set var="getcontent" value="${requestScope.contentList[0].content}" scope="request" ></c:set>
												<%
													Clob clob=(Clob) request.getAttribute("getcontent");
													String data=clob.getSubString(1, (int)clob.length());%>
			    <%-- <p><%=data %></p> --%>
			  <pre class="health_p" style="border:none;background-color: white;white-space:pre-line;"><p  style="font-size: 17px; font-family:'robotoregular' !important;"><%=data %></p></pre>
			 </div>
	</div>
	</c:if>
</body>
</html>

