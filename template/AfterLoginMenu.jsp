<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%-- <script type="text/javascript">
	$(document).ready(function(){
    $.ajax({
        type: "GET",
        url: "<%=request.getContextPath()%>/xml/${sessionScope.role_menu}",
        dataType: "xml",
        success: function(xml){
            var ul_main=$("<ul />");
            $(xml).find("Menu").each(function(){
                if($(this).children().length)
                {
                  var ulSub=$("<ul />");
                    $(this).children().each(function(){
                    
                    	var ulSub1=$("<ul />");
						
                    	 if($(this).children().length){
							 $(this).children().each(function(){
        						 ulSub1.append("<li class="+$(this).attr("class")+"><a onclick="+$(this).attr("href")+" style="+$(this).attr("style")+">"+$(this).attr("text")+"</a></li>");
        						 
        					});
							var li=$("<li class="+$(this).attr("class")+"><a onclick="+$(this).attr("href")+" style="+$(this).attr("style")+">"+$(this).attr("text")+"</a></li>");
							ulSub.append(li.append(ulSub1));
							
                    }else{
                    	ulSub.append("<li class="+$(this).attr("class")+"><a onclick="+$(this).attr("href")+" style="+$(this).attr("style")+">"+$(this).attr("text")+"</a></li>"); 
                    }
					
					
					});
                   var li=$("<li class="+$(this).attr("class")+"><a onclick="+$(this).attr("href")+" style="+$(this).attr("style")+">"+$(this).attr("text")+"</a></li>");
                    ul_main.append(li.append(ulSub));
                }
                else{
                	
                     
                    ul_main.append("<li class="+$(this).attr("class")+"><a onclick="+$(this).attr("href")+" style="+$(this).attr("style")+">"+$(this).attr("text")+"</a></li>");}
            });
            $("#cssmenu").append(ul_main);
        }
    });
});
</script> --%>

<script>
	function checkVisibility(v_flag,f_function){
		var f_name=f_function.split('()');
		 if(v_flag!=null && v_flag !=''){
			if(v_flag == 'Y'){
				window[f_name[0]]();
			}else{
				 toastr.error("This menu is inactivated by state department.");
			}
		} 
	}
</script>
<!-- *************************************************************************************after_menu_login -->
<jsp:include page="j_functions.jsp"></jsp:include>
<form:form name="mainform">
	<div id="menu_page" class="row">
		<div class="menu_con">
			<div class="mob-menu"><a><i class="fa fa-bars"></i></a></div>
			<div id='cssmenu'>
				<!-- <ul>
					<li class="undefined">
						<a href="../front/loadindexhome.htm">Home</a>
					</li>
					<li class="has-sub">
						<a >Admin</a>
						<ul>
							<li class="sub">
								<a href="../health/loadCreateUser.htm">Create User</a>
							</li>
							<li class="sub">
								<a href="../health/viewInstitute.htm">Institutes</a>
							</li>
							<li class="sub">
								<a href="../health/newMHTSearchEntry.htm">Mobile Health Teams</a>
							</li>
							<li class="sub">
								<a href="../health/loadInstMHTMap.htm">Institute MHT Mapping</a>
							</li>
							<li class="sub">
								<a href="../health/loadChildMaster.htm">Child Entry</a>
							</li>
							<li class="sub">
								<a href="../health/loadIndent.htm">Indent</a>
							</li>
							<li class="sub">
								<a href="../health/loadIndentReport.htm">Indent Report</a>
							</li>
							<li class="sub">
								<a href="../health/loadPHC.htm">PHC</a>
							</li>
							<li class="sub">
								<a href="../health/loadMHTActionPlan.htm">MHT Action Plans</a>
							</li>
							<li class="sub">
								<a href="../health/searchEstimationMHT.htm">Annual Estimated Target for MHT</a>
							</li>
							<li class="sub">
								<a href="../health/loadHolidayMaster.htm">Add Holiday</a>
							</li>
							<li class="sub">
								<a href="#">Delivery Point Entry & ASHA Entry</a>
							</li>
						</ul>
					</li>
					<li class="has-sub">
						<a>User Section</a>
						<ul>
							<li class="sub">
								<a href="../health/newScreeningDtlSearchEntry.htm">Screening Details Entry</a>
							</li>
							<li class="sub">
								<a href="../health/loadDEICForm.htm">DEIC Entry form</a>
							</li>
							<li class="sub">
								<a href="#">child mapping</a>
							</li>
							<li class="sub">
								<a href="../health/changePassword.htm">Change Password</a>
							</li>
						</ul>
					</li>
					<li class="undefined">
						<a href="#">Report</a>
					</li>
				</ul> -->
			</div>
		</div>
	</div>
	
	</form:form>
<!-- *************************************************************************************/after_menu_login -->

<!-- -------------------------------------------------------mob_menu_script -->
<script>
$(document).ready(function(){
	
	 $.ajax({
	        type: "GET",
	        url: "<%=request.getContextPath()%>/ROLEXML/${sessionScope.role_file}",
	        dataType: "xml",
	        success: function(xml){
	            var ul_main=$("<ul />");
	           /*  ul_main.addClass("nav side-menu"); */
	            $(xml).find("menu").each(function(){
	                if($(this).children().length)
	                { 
	                  var ulSub=$("<ul />");/* ulSub.addClass("nav child_menu"); */
	                 /*  ulSub.css('display','none'); */
	                    $(this).children().each(function(){
	                    
	                    	var ulSub1=$("<ul/>");
							
	                    	 if($(this).children().length){
								 $(this).children().each(function(){
	        						
	        						 ulSub1.append("<li class="+$(this).attr("menuClass")+"><a href=javascript:checkVisibility('"+$(this).attr("visibility")+"','"+$(this).attr("menuFunction")+"'); >"+$(this).attr("menuName")+"</a></li>");
	        						 
	        					});
								var li=$("<li class="+$(this).attr("menuClass")+"><a href=javascript:checkVisibility('"+$(this).attr("visibility")+"','"+$(this).attr("menuFunction")+"'); >"+$(this).attr("menuName")+"</a></li>");
								ulSub.append(li.append(ulSub1));
								
								
	                    }else{
	                    	ulSub.append("<li class="+$(this).attr("menuClass")+"><a href=javascript:checkVisibility('"+$(this).attr("visibility")+"','"+$(this).attr("menuFunction")+"'); >"+$(this).attr("menuName")+"</a></li>"); 
	                        }
						});
	                   var li=$("<li class="+$(this).attr("menuClass")+"><a href=javascript:checkVisibility('"+$(this).attr("visibility")+"','"+$(this).attr("menuFunction")+"'); >"+$(this).attr("menuName")+"</a></li>");
	                    ul_main.append(li.append(ulSub));
	                 
	                     
	                    /*  ul_main.append(li.removeClass("undefined"));
	                    ul_main.append(li.addClass("vn"));  */
	                    
	                }
	                else{
	                     
	                    ul_main.append("<li class="+$(this).attr("menuClass")+"><a href=javascript:checkVisibility('"+$(this).attr("visibility")+"','"+$(this).attr("menuFunction")+"'); >"+$(this).attr("menuName")+"</a></li>");}
	            });
	            $("#cssmenu").append(ul_main);
	        }
	    });
	
	
	$('.mob-menu').click(function(){
		$('#cssmenu').toggleClass('showmenu');
		});
			
});


</script>
<!-- -------------------------------------------------------/mob_menu_script -->


