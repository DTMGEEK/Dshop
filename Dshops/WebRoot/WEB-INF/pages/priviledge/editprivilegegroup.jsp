<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
<html>
<head>
<title>修改权限组</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="/css/vip.css" type="text/css">
<SCRIPT language=JavaScript src="/js/FoshanRen.js"></SCRIPT>
<script language="JavaScript">
function checkfm(form){
	if (trim(form.name.value)==""){
		alert("权限组名称不能为空！");
		form.name.focus();
		return false;
	}
	return true;
}
</script>
</head>
<body bgcolor="#FFFFFF" text="#000000" leftmargin="0" topmargin="0" marginwidth="0" marginheight="0">
<form action="${pageContext.request.contextPath}/control/priviledge/dealprivilege_edit" method="post" onsubmit="return checkfm(this)">

<input type="hidden" name="groupid" value="${egroupid}">
  <table width="90%" border="0" cellspacing="2" cellpadding="3" align="center">
    <tr bgcolor="6f8ac4"><td colspan="2"  > <font color="#FFFFFF">修改权限组：</font></td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="22%" > <div align="right">权限组名称：</div></td>
      <td width="78%"> <input type="text" name="name" value="${groupname}"> 
        <font color="#FF0000">*</font></td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td width="22%" > <div align="right">选择权限：</div></td>
      <td width="78%"> <c:forEach items="${privileges}" var="privilege" varStatus="statu">
		<input type="checkbox" name="privileges" value="${privilege.id.module},${privilege.id.privilege}"
		<c:forEach items="${selectprivileges}" var="sp"><c:if test="${sp==privilege}">checked</c:if></c:forEach>
		>${privilege.name}　<c:if test="${statu.count%4==0}"><br></c:if>
	  </c:forEach></td>
    </tr>
    <tr bgcolor="f5f5f5"> 
      <td colspan="2"> <div align="center"> 
          <input type="submit" name="SYS_SET" value=" 确 定 " class="frm_btn">
        </div></td>
    </tr>
  </table>
</form>
<br>
</body>
</html>