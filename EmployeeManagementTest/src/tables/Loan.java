package tables;

public class Loan {

	private String empDept;
	private String empName;
	private double loanAmount;
	private double interestAmount;

	public String getempDept() {
		return empDept;
	}

	public void setempDept(String empDept) {
		this.empDept = empDept;
	}

	public String getempName() {
		return empName;
	}

	public void setempName(String empName) {
		this.empName = empName;
	}
	
	public double getloanAmount() {
		return loanAmount;
	}
	
	public void setloanAmount(double loanAmount) {
		this.loanAmount = loanAmount;
	
	}
	
	public double getinterestAmount() {
		return interestAmount;
	}

	public void setinterestAmount(double interestAmount) {
		this.interestAmount = interestAmount;
	}
	

}
