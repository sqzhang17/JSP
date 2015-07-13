<%@ page contentType="text/html"%>

<html>
	<head>
	</head>
		<script language ="javascript">
			function isNumber(){
				//check number 1 
				if(calForm.number1.value==""){
					window.alert("number1 is empty");
					return false;
				}
				if(isNaN(calForm.number1.value)){
					window.alert("number 1 is not a valid number");
					return false;
				}
				
				//check number 2 
				if(calForm.number2.value==""){
					window.alert("number2 is empty");
					return false;
				}
				if(calForm.number2.value=="" || isNaN(calForm.number2.value)){
					window.alert("number 2 is not a valid number")
					return false;
				}
				
				//check number 2 when divide 
				if((calForm.operator.value)=="di" && parseInt(calForm.number2.value)==0){
					window.alert("number 2 cannot be zero if divide");
					return false;
				}
				return true;
			}
		</script>
	<body>
		<%
			String num1str=request.getParameter("number1");
			String num2str=request.getParameter("number2");
			double res = 0;
			if(num1str!=null && num2str!=null ){
				//get numbers
				double num1 = Double.parseDouble(num1str);
				double num2 = Double.parseDouble(num2str);
				
				//get operator
				String operator = request.getParameter("operator");
				
				//check operator
				if(operator.equals("a")){
					res=num1+num2;
				}else if(operator.equals("de")){
					res=num1-num2;
				}else if (operator.equals("m")){
					res=num1*num2;
				}else if(operator.equals("di")){
						res=num1/num2;

				}
			}
		%>
		<h1>Calculator</h1>
		<hr>
		<form name="calForm"action="calculator.jsp">
			1st number: <input type="text" name="number1" value="<%= num1str==null?0:num1str%>"><br>
			<select name="operator">
				<option value="a">+</option>
				<option value="de">-</option>
				<option value="m">x</option>
				<option value="di">/</option>
			</select>
			<br>
			2nd number: <input type="text" name="number2" value="<%= num2str==null?0:num2str%>"><br>
	
			<input type="submit" value="calculate" onclick="return isNumber()">
		</form>
		<hr>
		The result is:<%=res%>
	</body>
</html>

