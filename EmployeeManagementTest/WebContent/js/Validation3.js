function validateLoginForm() {
    var otHours = document.forms["salForm"]["otHrs"].value;
    var otRate = document.forms["salForm"]["otRate"].value;
    var empId = document.forms["salForm"]["empID"].value;
    
    if(isEmptyID(empId)){
    	if(idValidation(empId)){
    	   if(isEmptyHrs(otHours)){
    	        if(hrsValidation(otHours)){
    	        	if(isEmptyRate(otRate)){
    	        		if(rateValidation(otRate)){}
                	}
                }
            }
       }
    }
}

function isEmptyID(empId) {
    if (empId == "" || empId == null) {
        alert("Employee ID sholud not be empty..!!!");
        return false;
    }
    else
        return true;
}

function idValidation(empId) {
    var id = /^[0-9A-Z]+$/;
    if(empId.match(id)){
        return true;
    }
    else{
        alert("Can't use characters for Employee Number...!!!");
    }
}

function isEmptyHrs(otHours) {
    if (otHours == "" || otHours == null) {
        alert("OT Hours sholud not be empty..!!!");
        return false;
    }
    else
        return true;
}

function hrsValidation(otHours) {
    var num = /^[0-9]/;
    if(otHours.match(num)){
        return true;
    }
    else{
        alert("Enter Number between 0-9");
    }
    
}

function isEmptyRate(otRate) {
    if (otRate == "" || otRate == null) {
        alert("OT Rate sholud not be empty..!!!");
        return false;
    }
    else
        return true;
}

function rateValidation(otHours) {
    var num = /^[0-9]/;
    if(otHours.match(num)){
        return true;
    }
    else{
        alert("Enter Number between 0-9");
    }

}

