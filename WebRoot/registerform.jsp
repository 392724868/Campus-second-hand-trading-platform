<%@ page language="java" pageEncoding="gb2312"%>
<html>
	<body>
	<script type="text/javascript">
			function huidenglu(){
			window.location.href="loginform.jsp";
			}
            </script>
<script type="text/javascript">			
			function jianyanshuju(){
				account = document.registerform.account.value;
				password = document.registerform.password.value;
				if(account==""){
					alert("账号不能为空");
					document.registerform.account.focus();
					return;
				}
				else if(password==""){
					alert("密码不能为空");		
					document.registerform.password.focus();	
					return;	
				}	
				else if(password!="" ||account!=""){
					alert("经系统检验，该账号密码可以注册!");		
					return;	
				}	
				document.registerform.submit();					
			}
		</script>

<br><br><br><br><br><br><br>
<div align="center" >
  	<h1>☆★Sign Up★☆ </h1>
		<form name="registerform" action="registersinsert.jsp" method="post">
			请输入您的账号:<input type="text" name="account"><BR><BR>
			请输入您的密码:<input type="text" name="password"><BR><BR>
			请选择您的身份:
			<select name="identity">
				<option value="买家">买家</option>
				<option value="卖家">卖家</option>
			</select>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<BR><BR>
            <input type="button" onclick="jianyanshuju()" value="检验账号密码">
            <input type="submit" value="提交">
            <input type="button"onclick="huidenglu()"value="返回登录界面">
             <input type="reset" value="重置" >
		</form>
</div>
	</body>
</html>
