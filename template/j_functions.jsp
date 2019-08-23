<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<script>
	function loadCreateUser(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadCreateUser.htm";
		document.mainform.submit();
	}

//yogesh
   function loadApproveUser(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadApproveUser.htm";
		document.mainform.submit();
	}


	
	//vijay 
	function viewInstitute(){
		document.mainform.action = "<%=request.getContextPath()%>/health/viewInstitute.htm";
		document.mainform.submit();
	}

	function loadSearchIndentReport(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadSearchIndentReport.htm";
		document.mainform.submit();
	}

	function loadIndentTHOforappv()
	{
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadIndentTHOforappv.htm";
		document.mainform.submit();
		}
	
		function loadIndentDHOforappv()
	{
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadIndentDHOforappv.htm";
		document.mainform.submit();
		}

		
function loadIndentReportState()
	{
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadIndentReportState.htm";
		document.mainform.submit();
		}
	//vijay
	
	function newMHTSearchEntry(){
		document.mainform.action = "<%=request.getContextPath()%>/health/newMHTSearchEntry.htm";
		document.mainform.submit();
	}

	function loadInstMHTMap(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadInstMHTMap.htm";
		document.mainform.submit();
	}
   //nisarg
	function loadChildMaster(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadChildMaster.htm";
		document.mainform.submit();
	}

	function loadPHC(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadPHC.htm";
		document.mainform.submit();
	}

	function loadIndent(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadIndent.htm";
		document.mainform.submit();
	}
	function loadIndentMonitoringReport(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/indentMonitoringReport.htm";
		document.mainform.submit();
	}
    //nisarg
    
    /* Devendra */
	
	function loadMeasurementUnits(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadMeasurementUnits.htm";
		document.mainform.submit();
	}
	/* Devendra */
	
	function loadMHTActionPlan(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadMHTActionPlan.htm";
		document.mainform.submit();
	}

	function searchEstimationMHT(){
		document.mainform.action = "<%=request.getContextPath()%>/health/searchEstimationMHT.htm";
		document.mainform.submit();
	}

	function loadHolidayMaster(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadHolidayMaster.htm";
		document.mainform.submit();
	}

	function newScreeningDtlSearchEntry(){
		document.mainform.action = "<%=request.getContextPath()%>/health/newScreeningDtlSearchEntry.htm";
		document.mainform.submit();
	}

	function loadDEICForm(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadDEICForm.htm";
		document.mainform.submit();
	}

	function changePassword(){
		document.mainform.action = "<%=request.getContextPath()%>/acm/loadChangePassword.htm";
		document.mainform.submit();
	}

	function loadindexhome(){
		document.mainform.action = "<%=request.getContextPath()%>/front/loadindexhome.htm";
		document.mainform.submit();
	}

	function loadItem(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadItemNew.htm";
		document.mainform.submit();
	}

	function loadCancelledItem(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadCancelledItem.htm";
		document.mainform.submit();
	}

	function loadItemDistribution(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadItemDistribution.htm";
		document.mainform.submit();
	}

	function loadReceivedItem(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadReceivedItem.htm";
		document.mainform.submit();
	}

	function loadStockReport(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadStockReport.htm";
		document.mainform.submit();
		}

	function loadItemTransaction(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadItemTransaction.htm";
		document.mainform.submit();
	}
	
	function logOut(){
		document.mainform.action = "<%=request.getContextPath()%>/login/logOut.htm";
		document.mainform.submit();
	}
	function loadDistrictMaster(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadDistrictMaster.htm";
		document.mainform.submit();
	}

	function loadSingleDistributeItem(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadSingleItemDistribution.htm";
		document.mainform.submit();
	}
// ADDED BY -- DHAVAL JOSHI -- START
  	function stsAddMenu(){
  		document.mainform.action = "<%=request.getContextPath()%>/front/loadAddMenuSuper.htm";
		document.mainform.submit();
  	  	}
	function stsAssignMenu(){
		document.mainform.action = "<%=request.getContextPath()%>/front/loadAssignMenuSuper.htm";
		document.mainform.submit();
		}
	function stsAssignChildMenu(){
		document.mainform.action = "<%=request.getContextPath()%>/front/loadAssignChildMenuSuper.htm";
		document.mainform.submit();
		}
	function loadEditMenuSuper(){
		document.mainform.action = "<%=request.getContextPath()%>/front/loadEditMenuSuper.htm";
		document.mainform.submit();
		}
	function loadViewMenu(){
		document.mainform.action = "<%=request.getContextPath()%>/front/loadViewMenu.htm";
		document.mainform.submit();
		}
	function generateRoleXmlFile(){
		document.mainform.action = "<%=request.getContextPath()%>/front/generateRoleXmlFile.htm";
		document.mainform.submit();
		}
	
//ADDED BY -- DHAVAL JOSHI -- END



//monika
function loadIndentForAWC(){
	document.mainform.action = "<%=request.getContextPath()%>/inventory/loadIndentForAWC.htm";
		document.mainform.submit();
}

function loadRcvdPHCItem(){
	document.mainform.action = "<%=request.getContextPath()%>/inventory/loadRcvdPHCItem.htm";
		document.mainform.submit();
}



//monika
	function loadBlockMaster(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadBlockMaster.htm";
		document.mainform.submit();
	}

/* JINAL PATEL */
 function loadAckItem(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadAckItem.htm";
		document.mainform.submit();
	}

 function loadMenuAccessibility(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadMenuAccessibility.htm";
		document.mainform.submit();
	}
 function loadReceviedItem(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadSearchReceviedItem.htm";
		document.mainform.submit();
	}
/* JINAL PATEL */

	function loadDeliveryPointAndAshaEntry(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadSearchDeliveryPointAndAshaEntry.htm";
		document.mainform.submit();
	}
	
	function assignPHC(){
		document.mainform.action = "<%=request.getContextPath()%>/health/assignPhc.htm";
		document.mainform.submit();
	}
	
	function loadSearchVendor(){
		document.mainform.action = "<%=request.getContextPath()%>/inventory/loadSearchVendor.htm";
		document.mainform.submit();
	}
	/*Start: Vijay Pandey*/
	function loadHomePageContents(){
		document.mainform.action = "<%=request.getContextPath()%>/health/loadHomePageContents.htm";
		document.mainform.submit();
	}
	/*End: Vijay Pandey*/
</script>