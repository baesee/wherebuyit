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
</head>

<style>
	#header { padding-top:15px; padding-bottom:16px; height:29px; border-top: 3px solid #e00000; border-bottom:1px solid #ccc;}
	#header img { height:28px;}
	#header span { margin-top:20px; }
	#header .inner {background:#afa; width:1300px; margin:0px auto;}
	#header .inner .logo { float:left;}
	#header .inner ul { float:right;}
	#header .inner li { display:inline-block; margin:0 10px;}
	#header .inner .signup { border:1px solid #e00000; border-radius:16px; padding:8px 12px; color:#e00000}
	#header .inner span{ margin:0 10px; border:1px solid #000; margin-top:10px; padding:10px;}
	#wrap {background:#fff;}
	#container { width:1020px; margin:0px auto;}
	#contents ul{ margin:0 auto; padding-left:8px; padding-right:8px; }
	#contents il {display:inline-block;}
	.card {width:316px; border:1px solid #ddd; margin:0px 7px 12px 7px;}
	.card .profile {padding:12px 14px; height:30px; }
	.card .profile img{width:28px; height:28px;}
	.card .profile p {margin-top:10px; display:inline-block;}
	.card .profile div { float:left; overflow:hidden; border-radius:50%; display:inline-block; width:28px; height:28px; margin-right:10px;}
	.card .images {margin:0 0 10px 0;}
	.card .images img { width:316px;}
	.card .subject { font-size:17px; font-weight:bold; padding:4px 14px 0px 14px; line-height:25px;}
	.card .content { padding:6px 14px 0 14px;}
	.card .stats { margin:14px;}
	.card a:hover .a_none_hover { color:#444; }
	#footer {background:#ddd;}
	.section {text-align:center; margin:20px 0;}
	.title {font-weight:bold;}
	.card_container { }
	
	
</style>
<body>
	<div id="header">
		<div class="inner">
			<p class="logo"><img src="<c:url value='/images/wherebuyit/logo.png'/>" alt="로고"/></p>
			<p class="member_nav">
			<ul>
				<li class="login">로그인</li>
				<li class="signup">회원가입</li>
			</ul>
		</div>		
	</div>
	<div class="section title"> 오늘은 어떤 옷을 입었나요 ? </div>
	<button class="btn btn-primary" style="float : right;" onclick="location.href='post'">작성</button>
	<div id="wrap">
		<div id="container">
			<div id="contents">
				<ul>
					<c:forEach var="list" items="${BoardLists}" varStatus="status">
					<il>
						<div class="card_container">
							<div class="card">
								<div class="profile">
									<div><img src="<c:url value='/images/wherebuyit/logo.png'/>" alt="로고"/></div>									
									<p><c:out value="${list.writer}"/></p>																	
								</div>
								<a href="" >
									<div class="images">
										<img src="<c:url value='/images/wherebuyit/main_intro.png'/>" alt="이미지"/>
									</div>
									<div>
										<div><span class="subject"><c:out value="${list.subject}"/></span></div>
										<div><span class="a_none_hover content"><c:out value="${list.content}"/></span></div>
									</div>
									<div>
										<div class="a_none_hover stats">댓글/좋아요</div>
									</div>
								</a>
							</div>
						</div>
					</il>
					</c:forEach>
				</ul>
				
			</div>
			<div id="footer">
				footer
			</div>
		</div>

	</div>

</body>
</html>
