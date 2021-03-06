<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib  uri="/struts-tags" prefix="s" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>




<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
  
         <link rel="stylesheet" href="/css/bginvalid.css" type="text/css" media="screen" />
	  
		<!-- Main Stylesheet -->
		<link rel="stylesheet" href="/css/bgreset.css" type="text/css" media="screen" />
		
		<!-- Invalid Stylesheet. This makes stuff look pretty. Remove it if you want the CSS completely valid -->
		<link rel="stylesheet" href="/css/bgliststyle.css" type="text/css" media="screen" />	
        
        <!-- jQuery -->
		<script type="text/javascript" src="/js/jquery-1.5.2.min.js"></script>
		
		<!-- jQuery Configuration -->
		<script type="text/javascript" src="/js/simpla.jquery.configuration.js"></script>
		
		<!-- Facebox jQuery Plugin -->
			<script type="text/javascript" src="/js/jquery.wysiwyg.js"></script>
		<script type="text/javascript" src="/js/facebox.js"></script>
		

		
		<!-- jQuery Datepicker Plugin -->
		
		
        
        <script type="text/javascript" src="/js/producttypecheckForm.js"></script>
        
        
        
        <script type="text/javascript">
			jQuery(document).ready(function($) {
			  $('a[rel*=facebox]').facebox() 
			})
			
		</script>
		
		
        
        
        
        
</head>
<body>



<!--弹出增加新父类型  --><div id="addparentdiv" style="display:none">               
				<h3>增加部门</h3>
			 
			 
			 
				<form action="${pageContext.request.contextPath}/control/priviledge/dealdepartmetn_addDepartment" onsubmit="return checkfm(this)" method="post">
				
			
			
                                   <input type="hidden" name="page" value="${pageView.totalpage}"/>
					 部门名称　：    　  <input type="text"name="name"/><br/>
                  
					<input class="button" type="submit" value="提交" />		
				</form>
				
	</div> <!-- End  弹出增加新父类型 -->


<div id="tbnav">


            
         </div>   
            
            
     <div class="content-box"><!-- Start Content Box -->
				
				<div class="content-box-header">
					
					<h3>部门列表</h3>
					
					
					
					<div class="clear"></div>
					
				</div> <!-- End .content-box-header -->
				
				<div class="content-box-content">
					
				  <div class="tab-content default-tab" id="tab1"> <!-- This is the target div. id must match the href of this div's tab -->
				    <table width="100%">
							
			  <thead>
								<tr>
								
								 
								   <th>部门代号</th>
								   <th>名称</th>
								   <th>操作</th>
								</tr>
								
							</thead>
						 
							<tfoot>
								<tr>
									<td colspan="6">
                                       <center>
                                          <div class="pagination">
                                            <%@ include file="/WEB-INF/pages/share/Departmentfenye.jsp"  %>
                                        </div>
                                         </center> <!-- End .pagination -->
										<div class="clear"></div>
									</td>
								</tr>
							</tfoot>
						 
						<tbody>
						   <c:if test="${empty pageView.records}"><font size="14" color="red">对不起，没有相关记录</font></c:if>
					        <c:if test="${!empty pageView.records}">
							<c:forEach  items="${pageView.records}" var="listvalue">
								<tr>
									            
									        
									            
									
									<td>${listvalue.departmentid}</td>
									<td>${listvalue.name }</td>
								
									<td>
										<!-- Icons -->
										
									
										     <a href="#mydiv_${listvalue.departmentid}" title="修改"  rel="facebox" ><img src="/images/icons/pencil.png" alt="修改" /></a>
								
									    
								
										 	<a href="#deleteconfirmdiv_${listvalue.departmentid}" title="删除" rel="facebox"><img src="/images/icons/cross.png" alt="删除" /></a> 
						
									</td>
								</tr>
								
             <!--弹出修改  --><div id="mydiv_${listvalue.departmentid}" style="display:none">               
				<h3>修改菜单</h3>
			 
			 
			 
				<form action="${pageContext.request.contextPath}/control/priviledge/dealdepartmetn_editDepartment"  onsubmit="return checkfm(this)" method="post">
				                    <input type="hidden" name="page" value="${pageView.currentpage}"/>
                                    <input type="hidden" name="departmentid" value="${listvalue.departmentid}">
					原 部门名称　：    　  <input type="text" name="rname" value="${listvalue.name}"  disabled="disabled"/><br/>
                                                     新部门名称      ：　　<input type="text" name="name"  maxlength="10"><br/>
                  
									<input class="button" type="submit" value="提交" />		
				</form>
				
	</div> <!-- End  弹出增加新父类型 -->

    
    
       <!--弹出确认是否删除菜单  --><div id="deleteconfirmdiv_${listvalue.departmentid}" style="display:none">               
				<h3>删除菜单</h3>
			 
				
					
					<h4>是否删除</h4>
					            
					
					               
					 部门名称　：    　  <input  type="text" name="name" value="${listvalue.name}" disabled="disabled"/><br/>
                                               
                                   <a href="<s:url action="dealdepartmetn_delDepartmetn" namespace="/control/priviledge"/>?departmentid=${listvalue.departmentid}&page=${pageView.currentpage}">删除</a>
                                   
                                   
								
				
	</div>
								
								
								
								
			</c:forEach>
							
							</tbody>
	   </c:if>
							
						</table>
                        
					  <p>
                      		 <a  class="shortcut-button" style="display:inline" href="#addparentdiv" title="修改"  rel="facebox"><img src="/images/icons/paper_content_pencil_48.png" alt="icon" />
                                                                                         增加新部门
                            </a>
                            
                             
       
					  </p>
                  </div> 
					<!-- End #tab1 -->
						
				</div> <!-- End .content-box-content -->
				
			</div>
			
			</div> <!-- End 弹出确认是否删除菜单 -->
    
    		
            
          
</body>
</html>
