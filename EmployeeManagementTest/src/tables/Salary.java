package tables;

public class Salary {

	private String empID;
	private int otHrs;
	private double otRate;
	private double Bonus;
	private double ded;
	private double netSal;
	private double basicSal;
	
	
	public double getbasicSal() {
		return basicSal;
	}
	public void setbasicSal(double basicSal) {
		this.basicSal = basicSal;
	}
	public double getnetSal() {
		return netSal;
	}
	public void setnetSal(double netSal) {
		this.netSal = netSal;
	}
	public String getempID() {
		return empID;
	}
	public void setempID(String empID) {
		this.empID = empID;
	}
	public int getotHrs() {
		return otHrs;
	}
	public void setotHrs(int otHrs) {
		this.otHrs = otHrs;
	}
	public double getotRate() {
		return otRate;
	}
	public void setotRate(double otRate) {
		this.otRate = otRate;
	}
	public double getBonus() {
		return Bonus;
	}
	public void setBonus(double bonus) {
		Bonus = bonus;
	}
	public double getded() {
		return ded;
	}
	public void setded(double ded) {
		this.ded = ded;
	}

	
}	

