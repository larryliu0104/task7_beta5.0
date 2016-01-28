package formbean;

import java.util.ArrayList;
import java.util.List;

import org.mybeans.form.FormBean;

import com.google.gson.Gson;

import util.Util;

public class BuyFundForm extends FormBean {
	private String amount;
	private String action;

	public List<String> getValidationErrors() {
		List<String> errors = new ArrayList<String>();

		getAmountErrors(errors);

		if (!isBuy()) {
			errors.add("Invalid action");
		}
		if (!Util.matchTwoDecimalInput(amount)) {
			errors.add("Buy amount should have at most two decimal places");
		}
		if (Double.parseDouble(amount) > 1000000) {
			errors.add("Buy amount be less or equal than 1000000");

		}
		if (Double.parseDouble(amount) < 1) {
			errors.add("Buy amount should be more than 1");

		}
		if (errors.size() > 0) {
			return errors;
		}

		return errors;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	public boolean isBuy() {
		return "buy".equals(action);
	}

	@Override
	public String toString() {
		return new Gson().toJson(this);
	}

	public String getAmount() {
		return amount;
	}

	public void setAmount(String amount) {
		this.amount = amount;
	}

	public void getAmountErrors(List<String> errors) {
		if (amount == null) {
			errors.add("amount is required");
			return;
		}
		double amountValue = 0;
		try {
			amountValue = Double.valueOf(amount);
		} catch (Exception e) {
			errors
			    .add("Numbers and decimal place only. No commas, letters or symbols.");
			return;
		}
		if (amountValue <= 0) {
			errors.add("amount must be greater than zero");
			return;

		}
	}
}
