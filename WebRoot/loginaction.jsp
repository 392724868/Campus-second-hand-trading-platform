<%@ page language="java" import="java.util.*" pageEncoding="gb2312"%>
<%@page import="dao.dengludao"%>				
<%@page import="vo.denglu"%>
<html> 
  <body>
    <%
    	request.setCharacterEncoding("gb2312");
            	String account = request.getParameter("account");
            	String password = request.getParameter("password");
            	String radio = request.getParameter("identity");
            	String code =request.getParameter("code");
            	String randStr =(String)session.getAttribute("randStr");
            	
            	dengludao cdao = new dengludao();
            	denglu user = cdao.getUserByAccount(account);
        		
        		
        		
        		if(user==null || !user.getPassword().equals(password)|| ! code.equals(randStr)){
    %>
	     <script type="text/javascript">
         window.alert("�˺��������֤�����");	
         result= history.back();   		
        </script> 
	<%			
		}
	else{
        if(user.getIdentity().equals("���")){
        response.sendRedirect("maijia3.jsp");
        }
        if(user.getIdentity().equals("����")){
        response.sendRedirect("maijia4.jsp");
        }
        }
  %>
  </body>
</html>
