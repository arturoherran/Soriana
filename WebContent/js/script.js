/**
// *Lets see if I can trigger a modal when loading the page
// */

$(document).ready(function(){
	var isNewCustomer = <%=request.getAttribute("newCustomer")%>;
	$('#successMsg').modal('show');
    });