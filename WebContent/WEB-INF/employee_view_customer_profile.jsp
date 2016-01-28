<jsp:include page="employee-top.jsp" />
<div class="panel-heading">
	<h3 class="panel-title">Customer Profile 
	</h3>
</div>
<br>
<div class="panel-body">
	<div class="col-md-8 column">
<%-- 		<button  class="btn btn-default" type="button"><a  href="employee_view_customer_profile.do?userName=${customer.getUserName()}">View Profile</a></button> --%>
		<button  class="btn btn-default" type="button"><a href="employee-change-customer-pwd.do?userName=${customer.getUserName()}">Change
		Password</a></button>
		<button  class="btn btn-default" type="button"><a
			href="employee-view-transactions.do?userName=${customer.getUserName()}">Transaction
		History</a></button>
		<button  class="btn btn-default" type="button"><a
			href="employee-deposit-check.do?userName=${customer.getUserName()}">Deposit
			Check</button>
		</li>
		<table class="table table-striped table-hover">
			<thead>
				<tr>
					<th width="50%">${customer.getUserName()} Information </th>
					<th>    </th>
			</thead>
			<tbody>
				<tr>
					<td>User Name</td>
					<td>${customer.getUserName()}</td>
				</tr>
				<tr>
					<td>First Name</td>
					<td>${customer.getFirstName()} </td>
				</tr>
				<tr>
					<td>First Name</td>
					<td>${customer.getLastName()}</td>
				</tr>
				<tr>
					<td>Address</td>
					<td>
						<c:if test="${customer.getAddrLine1() !=null}">${customer.getAddrLine1()}
						</c:if>
						<c:if
							test="${customer.getAddrLine2() !=null && customer.getAddrLine2().length() != 0}">
							<br></br>${customer.getAddrLine2()}
						</c:if>
						${customer.getCity()}<br>
						${customer.getState()}&nbsp;${customer.getZip()}
					</td>
				</tr>
				<tr>
					<td>Cash Balance</td>
					<td>${customer.getCashTwoDecimal()}</td>
				</tr>
			</tbody>
		</table>
	</div>
</div>
