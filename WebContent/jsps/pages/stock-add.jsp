<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%><%@taglib uri="/struts-tags" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<base href="<%=basePath %>"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

	<form action="stockAdd.action" method="post">
		<input type="hidden" name="stock.user.id" value="${user.id}">
		
		商品：<select name="stock.goods.id" style="width: 149px">
					<s:iterator value="goodsList">
						<option value="<s:property value="id"/>"><s:property value="name"/></option>
					</s:iterator>
				</select><font color="red">*</font><br>
		数量：<input type="text" name="stock.amount" required="required" placeholder="请输入数字"/><font color="red">*</font><br>
		价格：<input type="text" name="stock.remark"/>
		
		<input type="submit" value="添加"/>
	
	</form>
	
</body>
</html>
