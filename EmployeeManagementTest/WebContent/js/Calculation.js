function calc() {
    var amount;
    var otHours = document.forms["salForm"]["otHrs"].value;
    var otRate = document.forms["salForm"]["otRate"].value;
    var bonus = document.forms["salForm"]["Bonus"].value;
    var deductions = document.forms["salForm"]["ded"].value;
    var temp;
    var ans;
    amount = (otHours * otRate);
    temp =  (bonus - deductions);
    ans = (amount + temp );
    alert("Salary : " +ans);
}
