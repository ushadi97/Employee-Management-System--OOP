function valLoanForm() {
    var empName = document.forms["loanForm"]["empName"].value;
    var empDept = document.forms["loanForm"]["empDept"].value;
    var loanAmount = document.forms["loanForm"]["loanAmount"].value;

    if(isEmptyName(empName)){
        if(nameValidation(empName)){
            if(isEmptyDept(empDept)){
                if(deptValidation(empDept)){
                    if(isEmptyAmount(loanAmount)){
                        if(amountValidation(loanAmount)){}
                    }
                }
            }
        }
    }

}

function isEmptyName(empName) {
    if (empName == "" || empName == null) {
        alert("Employee Name sholud not be empty..!!!");
        return false;
    }
    else
        return true;
}

function nameValidation(empName) {
    var name = /^[a-zA-Z]/;
    if(empName.match(name)){
        return true;
    }
    else{
        alert("Enter a Valid Name..!!");
    }

}

function isEmptyDept(empDept) {
    if (empDept == "" || empDept == null) {
        alert("Employee Department sholud not be empty..!!!");
        return false;
    }
    else
        return true;
}

function deptValidation(empDept) {
    var name = /^[a-zA-Z]/;
    if(empDept.match(name)){
        return true;
    }
    else{
        alert("Enter a Valid Name..!!");
    }

}

function isEmptyAmount(loanAmount) {
    if (loanAmount == "" || loanAmount == null) {
        alert("Loan Amount sholud not be empty..!!!");
        return false;
    }
    else
        return true;
}

function amountValidation(loanAmount) {
    var amount = /^[0-9]/;
    if(loanAmount.match(amount)){
        return true;
    }
    else{
        alert("Enter a Valid Name..!!");
    }

}