<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%
  /**
  * @Class Name : egovSampleList.jsp
  * @Description : Sample List 화면
  * @Modification Information
  *
  *   수정일         수정자                   수정내용
  *  -------    --------    ---------------------------
  *  2009.02.01            최초 생성
  *
  * author 실행환경 개발팀
  * since 2009.02.01
  *
  * Copyright (C) 2009 by MOPAS  All right reserved.
  */
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" xml:lang="ko">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><spring:message code="title.sample" /></title>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/wherebuyit/reset.css'/>"/>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/wherebuyit/common.css'/>"/>
    <link type="text/css" rel="stylesheet" href="<c:url value='/css/wherebuyit/style.css'/>"/>
    <script type="text/javaScript" language="javascript" defer="defer">
        <!--
        /* 글 수정 화면 function */
        function fn_egov_select(id) {
        	document.listForm.selectedId.value = id;
           	document.listForm.action = "<c:url value='/updateSampleView.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 등록 화면 function */
        function fn_egov_addView() {
           	document.listForm.action = "<c:url value='/addSample.do'/>";
           	document.listForm.submit();
        }
        
        /* 글 목록 화면 function */
        function fn_egov_selectList() {
        	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
           	document.listForm.submit();
        }
        
        /* pagination 페이지 링크 function */
        function fn_egov_link_page(pageNo){
        	document.listForm.pageIndex.value = pageNo;
        	document.listForm.action = "<c:url value='/egovSampleList.do'/>";
           	document.listForm.submit();
        }
        
        //-->
    </script>
    
    <% 
	   	String rootPath = request.getSession().getServletContext().getRealPath("/") ;
	   	String imgPath = rootPath+"images/wherebuyit/image/";
   
    %>
</head>

<style>
	
</style>
<body>
	<%@include file="header.jsp"%>

	<div class="section title"> 오늘은 어떤 옷을 입었나요 ? </div>
	
	<div id="wrap">
		<div id="container">
			<div id="contents">
				<ul>
					<c:forEach var="list" items="${BoardLists}" varStatus="status">
					<li>
						<div class="card_container">
							<div class="card">
								<div class="profile">
									<div><img src="<c:url value='/images/wherebuyit/logo.png'/>" alt="로고"/></div>									
									<p>da_goon
									<%-- <c:out value="${list.writer}"/> --%>
									</p>																	
								</div>
								<div class="images">
									<img src="<c:url value='/images/wherebuyit/image/'/>${list.storedFileName}" alt="이미지"/>
								</div>
								<div class="stats">
									<div class="icons">
										<img src="<c:url value='/images/wherebuyit/like-50.png'/>" alt="좋아요"/>
										<img src="<c:url value='/images/wherebuyit/comment-50.png'/>" alt="댓글"/>
									</div>
									<div class="like">
										좋아요 1029개
									</div>
									<div class="content">
										<span class="writer">da_goon</span>
										<span>핼언니랑헬요일뿌시기(´∇ﾉ｀*)ノ</span>
									</div>
									<div class="reg_date">
										10시간전 
									</div>
									<div class="comment">
										<input type="text" class="_2hc0g _qy55y" aria-label="댓글 달기..." placeholder="댓글 달기...">
									</div>					
								</div>

							</div>
						</div>
					</li>
					</c:forEach>
				</ul>
				
			</div>
			<%@include file="footer.jsp"%>
		</div>

	</div>

</body>
</html>
