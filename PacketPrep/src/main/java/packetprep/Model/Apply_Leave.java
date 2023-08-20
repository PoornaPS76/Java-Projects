package packetprep.Model;

public class Apply_Leave {

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public void setCasual_leaves(String casual_leaves) {
		this.casual_leaves = casual_leaves;
	}

	public String getCasual_leaves() {
		return casual_leaves;
	}

	public String getSick_leaves() {
		return sick_leaves;
	}

	public void setSick_leaves(String sick_leaves) {
		this.sick_leaves = sick_leaves;
	}

	public String getPayoff_leaves() {
		return payoff_leaves;
	}

	public void setPayoff_leaves(String payoff_leaves) {
		this.payoff_leaves = payoff_leaves;
	}

	public String getFrom_date() {
		return from_date;
	}

	public void setFrom_date(String from_date) {
		this.from_date = from_date;
	}

	public String getTo_date() {
		return to_date;
	}

	public void setTo_date(String to_date) {
		this.to_date = to_date;
	}

	public String getNo_of_days() {
		return no_of_days;
	}

	public void setNo_of_days(String no_of_days) {
		this.no_of_days = no_of_days;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	String username;
	String casual_leaves;
	String sick_leaves;
	String payoff_leaves;
	String from_date;
	String to_date;
	String no_of_days;
	String subject;
	String reason;
	String status;

}
