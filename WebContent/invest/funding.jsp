<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<script type="text/javascript">

function inputQty(q){
	var qty = Number(q.value);
	var invmoney = qty * ${param.price};	
	oInvmoney = document.getElementById("invmoney");
	oInvmoney.innerHTML = invmoney;
	
}

</script>
</head>
<body>
<br><br><br><br>
funding.jsp<br>
croid : ${param.croid}<br>
croid, price 필요. <br>
결국 productdto를 가져와야 함.<br>
price : ${param.price}<br>

<label>수량</label>&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" value="" id="qty" name="qty" onblur="inputQty(this)"><br>
<label>금액</label>&nbsp;&nbsp;&nbsp;&nbsp;<span name="invmoney" id="invmoney"></span><br>

</body>
</html>