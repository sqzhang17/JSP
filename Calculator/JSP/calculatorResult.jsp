<%@ page contentType="text/html"%>

<html>
	<body>
		<%
			//get numbers
			int num1 = Integer.parseInt(request.getParameter("number1"));
			int num2 = Integer.parseInt(request.getParameter("number2"));
			
			//get operator
			String operator = request.getParameter("operator");
			
			int res = 0;
			
			//check operator
			if(operator.equals("+")){
				res=num1+num2;
			}else if(operator.equals("-")){
				res=num1-num2;
			}else if (operator.equals("*")){
				res=num1*num2;
			}else{
				res=num1/num2;
			}
			
			out.println("The result is: "+res);
		%>
	</body>
</html>