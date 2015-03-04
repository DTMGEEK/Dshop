<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags"  prefix="s"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions"  prefix="fn"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>用户注册 </title>
<link href="/css/header.css" rel="stylesheet" type="text/css">
<link href="/css/reg.css" rel="stylesheet" type="text/css">

<script src="/js/jquery-1.5.2.js" type="text/javascript" charset="UTF-8"></script>
<script src="/js/checkUser.js" type="text/javascript" charset="UTF-8"></script>

<SCRIPT language=JavaScript src="/js/FoshanRen.js"></SCRIPT>

 
</head>

<body>

<!-- 检证用户是否存在表单 end -->
<TABLE cellSpacing=0 cellPadding=0 width=770 align=center border=0>
  <TBODY>
  <TR><TD background="/images/login/login_03.jpg">&nbsp;</TD></TR>
  <TR>
    <TD height=15>&nbsp;</TD>
  </TR>
  <TR>
    <TD height=30><img src="/images/login/zc.gif" width="128" height="31" /></TD>
  </TR>
 </TBODY>
</TABLE>
<c:if test="${!empty error}">
<DIV id="errorinfo" style="DISPLAY:none">
<TABLE cellSpacing=1 cellPadding=8 width="78%" align="center" bgColor="#dd9988" border=0>
  <TBODY>
  <TR>
    <TD bgColor="#ffffd5" align="left"><IMG height="17" src="/images/buy/exclamation-error-red.gif" width="17"> <FONT color="#990000"><STRONG><SPAN class="font14">错误提示<BR></SPAN></STRONG></FONT>
      <DIV id="errorMessage"></DIV>
	</TD>
  </TR>
  </TBODY>
</TABLE>
</DIV>
</c:if>
<div id="Content">
<form action="${pageContext.request.contextPath}/buyer/list/regaction" method="post" onsubmit="javascript:return checkForm()">
<INPUT TYPE="hidden" NAME="method" value="reg">
<input type="hidden" name="directUrl" value="${param.directUrl}">
<div id="Main">
  <ul id="FormRegStep1_Account" class="RegForm">
        <li class="Title">以下<span class="STYLE1">均为</span>必填项　</li>
		
		<li>
		   <div class="Hint">会员名：</div>
        <div class="Input">
		  	<input id="cusername" name="userName" type="text" size="24" value="" tabindex="1"  maxLength="20" onkeyup="value=value.replace(/[\W]/g,'')" onblur="getinfo()"/> <br />
			
  		  </div>
          <div class="Info">
        		<div id="username_info">5-20个字符(包括小写字母、数字、下划线)，一旦注册成功会员名不能修改。</div><br>
			    <div id="checkResult"></div><br>
          </div>
        <div class="HackBox"></div>
		</li>
 
	    <li>
            <div class="Hint">密码：</div>
            <div class="Input">
              <input id="password" name="password" value=""  id="password" type="password" size="24" maxlength="16" tabindex="2" onblur="checkPasswordLength()"/>
            </div>
            <div class="Info">
                <div id="password_info">密码由6-16个字符组成，请使用英文字母加数字或符号的组合密码</div><br>
            </div>
            <div id="checklength" class="HackBox"></div>
          </li>
    
          <li>
            <div class="Hint">再输入一遍密码：</div>
            <div class="Input">
              <input  id="repassword" name="repassword" value=""  id="repassword" type="password" size="24" maxlength="16" tabindex="3" onblur="checkPassword()"/>
            </div>
            <div class="Info">
                 <div id="confirm_password_info">请再输入一遍您上面输入的密码。</div><br>
            </div>
            <div  id="HackBox"  class="HackBox"></div>
          </li>
		  <li>
            <div class="Hint">电子邮件：</div>
            <div class="Input">
              <input name="email" value="" id="email"  type="text" size="28" maxlength="45" tabindex="3" onblur="checkEmail()"/>
            </div>
            <div class="Info"><div id="email_info">没有电子邮件？推荐使用<a href="https://reg.cn.yahoo.com/cnreg/cnreg_first?id=78001" target="_blank">雅虎3.5G免费超大邮箱</a>、<a href="http://mail.sogou.com/register.jsp" target="_blank">搜狐邮箱</a>和<a href="http://reg.126.com/reg1.jsp" target="_blank">网易邮箱</a>。<br></div>
            </div>
            <div id="checkEmail" class="HackBox"></div>
          </li>
	</ul><p class="SubmitBox">
	<input type="submit"  name="Submit" value="提交注册信息" tabindex="8" />
	</p></div>
	<form>
</div>

</html>